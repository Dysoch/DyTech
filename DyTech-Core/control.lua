require "defines"
require "scripts/database"
require "scripts/functions"
require "scripts/oninit"
require "scripts/onload"
require "scripts/recycler-database"

local RubberSeedTypeName = "RubberTree"
local RubberGrowingStates = {
	"rubber-seed",
	"small-rubber-tree",
	"medium-rubber-tree",
	"mature-rubber-tree"
}
local RubberOutput = {"resin", 3}
local RubberTileEfficiency = {
	["grass"] = 1.00,
	["grass-medium"] = 1.50,
	["grass-dry"] = 0.75,
	["dirt"] = 1.25,
	["dirt-dark"] = 1.25,
	["hills"] = 0.80,
	["sand"] = 0.25,
	["sand-dark"] = 0.25,
	["other"] = 0
}
local RubberBasicGrowingTime = 5400
local RubberRandomGrowingTime = 2700
local RubberFertilizerBoost = 1.25
local allInOne = {
	["name"] = RubberSeedTypeName,
	["states"] = RubberGrowingStates,
	["output"] = RubberOutput,
	["efficiency"] = RubberTileEfficiency,
	["basicGrowingTime"] = RubberBasicGrowingTime,
	["randomGrowingTime"] = RubberRandomGrowingTime,
	["fertilizerBoost"] = RubberFertilizerBoost
}

game.oninit(function()
	Init.OnInit()
	
end)

game.onsave(function()

end)

game.onload(function()
	Load.OnLoad()
	if game.itemprototypes.charcoal and glob.compatibility.treefarm == false then --checks for Treefarm mod and if it has already detected it
		glob.compatibility.treefarm=true
		if (remote.interfaces.treefarm) and (remote.interfaces.treefarm.addSeed) then
			local errorMsg = remote.call("treefarm", "addSeed", allInOne)
			--if errorMsg ~= nil then game.player.print (errorMsg) end
		end
	else
		glob.compatibility.treefarm=false
		for seedTypeName, seedTypeInfo in pairs (glob.trees.seedTypes) do
			if game.itemprototypes[seedTypeInfo.states[1]] == nil then
				glob.trees.isGrowing[seedTypeName] = nil
				glob.trees.seedTypes[seedTypeName] = nil
			end
		end
	end
end)

game.onevent(defines.events.onplayercrafteditem, function(event)
incrementDynamicCounters = function(stack)
	if database.craftitems[stack.name] then
		for counter, ingredients in pairs(database.craftitems[stack.name]) do
			if database.craftitems[counter] then
				incrementDynamicCounters({name=counter, count=ingredients})
			else
				glob.counter[counter]=glob.counter[counter]+(stack.count*ingredients)
			end
		end
	end
end
incrementDynamicCounters(event.itemstack)
end)

-- processItem is still a stack, just better named
ProcessRecycling = function(processItem, recycler, recursive)
  if recursive and type(recursive) == "table" then
    local baseItems = recursive
  else
    local baseItems = {}
  end
  
  if RecyclerDatabase.recycleitems[processItem.name] then
    for baseItem, count in pairs(RecyclerDatabase.recycleitems[processItem.name]) do
      if RecyclerDatabase.recycleitems[baseItem] then
        ProcessRecycling({name=baseItem, count=count}, nil, baseItems)
      else
        table.insert(baseItems, {name=baseItem, count=(processItem.count*count)})
      end
    end
  end
  
  -- will not run for recursive call since recycler is nil
  if recycler and recycler.valid then
    -- possible bug V since the baseItems aren't inserted yet...
    recycler.remove(processItem)
    for index, baseItem in pairs(baseItems) do
      -- additional standard checks for room, if false maybe return the baseItem table...
      -- this is why I chose to insert them as a stack in the else above, a tiny bit easier
      recycler.insert(baseItem)
    end
  else
    return baseItems
  end
end

game.onevent(defines.events.onplayermineditem, function(event)
	glob.counter2.mine = glob.counter2.mine + event.itemstack.count
	if database.mineitems[event.itemstack.name] then
		for counter, ingredients in pairs(database.mineitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
	if event.itemstack.name == "raw-wood" then
		if math.random(50) == 25 then
			game.player.insert{name="resin",count=math.random(1,4)}
			game.player.print(game.gettext("msg-rubber"))
		end
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	glob.counter2.died = glob.counter2.died + 1
	if database.kill[event.entity.name] and event.entity.force.name == "enemy" then
		for counter, ingredients in pairs(database.kill[event.entity.name]) do 
			glob.combat[counter]=glob.combat[counter] + ingredients
		end
	end
end)

game.onevent(defines.events.onsectorscanned, function(event)
	glob.counter2.sectorscanned = glob.counter2.sectorscanned + 1
end)

game.onevent(defines.events.onpickedupitem, function(event)
	glob.counter2.pickup = glob.counter2.pickup + event.itemstack.count
end)

game.onevent(defines.events.ontick, function(event)
	fs.Timer()
	if game.tick%60==1 then
		glob.counter.dytech=0
		glob.combat.dytech=0
		glob.counter2.dytech=0
		for _, counter in pairs(glob.counter) do 
			if (counter~=glob.counter.dytech) then glob.counter.dytech=glob.counter.dytech+counter end
		end
		for _, counter in pairs(glob.counter2) do 
			if (counter~=glob.counter2.dytech) then glob.counter2.dytech=glob.counter2.dytech+counter end
		end
		for _, counter in pairs(glob.combat) do 
			if (counter~=glob.combat.dytech) then glob.combat.dytech=glob.combat.dytech+counter end
		end
	end
	if glob.compatibility.treefarm == false then
		for seedTypeName, seedType in pairs(glob.trees.isGrowing) do
			if (seedType[1] ~= nil) and (game.tick >= seedType[1].nextUpdate)then
				local removedEntity = table.remove(seedType, 1)
				fs.updateEntityState(removedEntity)
			end
		end
	end
	--[[Stone Collector]]--
    if glob.stone~=nil and event.tick%12==0 then
		fs.CollectByPosition("stone", 1.5, false)
		fs.CollectByPosition("stone", 1.5, true)
	end
	--[[Sand Collector]]--
--	if glob.sand~=nil and event.tick%12==0 then
--		fs.CollectByPosition("sand", 1.5, false)
--		fs.CollectByPosition("sand", 1.5, true)
--	end
	--[[Coal Collector]]--
	if glob.coal~=nil and event.tick%12==0 then
		fs.CollectByPosition("coal", 1.5, false)
		fs.CollectByPosition("coal", 1.5, true)
	end
	--[[DyTech Item Collector]]--
	if glob.dytechitem~=nil and event.tick%60==0 then
		fs.DyTechItemCollect(dytechitem, 50)
	end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	if event.createdentity.type == "tree" then
		if glob.compatibility.treefarm == false then
			local currentSeedTypeName = fs.getSeedTypeByEntityName(event.createdentity.name)
			if currentSeedTypeName ~= nil then
				fs.seedPlaced(event.createdentity, currentSeedTypeName)
				return
			end
		end
	--[[Stone Collector Build]]--
	elseif event.createdentity.name == "stone-collector-1" or event.createdentity.name == "stone-collector" then
		glob.stonecount=glob.stonecount+1
		glob.stone[glob.stonecount]={}
		glob.stone[glob.stonecount].position=event.createdentity.position
		--[[Coal Collector Build]]--
	elseif event.createdentity.name == "coal-collector-1" or event.createdentity.name == "coal-collector" then	
		glob.coalcount=glob.coalcount+1
		glob.coal[glob.coalcount]={}
		glob.coal[glob.coalcount].position=event.createdentity.position
	elseif event.createdentity.name == "dytech-item-collector" then				
		glob.dytechitemcount=glob.dytechitemcount+1
		glob.dytechitem[glob.dytechitemcount]={}
		glob.dytechitem[glob.dytechitemcount].position=event.createdentity.position
	--[[Sand Collector Build]]--
--	elseif event.createdentity.name == "sand-collector-1" or event.createdentity.name == "sand-collector" then				
--		if glob.sand==nil then
--			glob.sand={}
--			glob.sandcount=0
--		end
--		glob.sandcount=glob.sandcount+1
--		glob.sand[glob.sandcount]={}
--		glob.sand[glob.sandcount].position=event.createdentity.position
	end
	glob.counter2.build = glob.counter2.build + 1
end)

game.onevent(defines.events.onchunkgenerated, function(event)
	glob.counter2.chunks = glob.counter2.chunks + 1
end)

remote.addinterface("DyTech-Core",
{
  detectModule = function(name)
	if type(name) == "string" then
		if name == "all" then return glob.dytech else return glob.dytech[name] end
	elseif type(name) == "table" then
		local result = {}
			for _, name in ipairs(name) do
			result[name] = glob.dytech[name]
			end
	return result
	else
    return false -- could also use error("unknown name type", 2)
	end
  end,
  
  addModule = function(name)
	glob.dytech[name] = true
  end,

  Modules = function()
			game.player.print("This shows which module of DyTech is installed:")
			game.player.print("DyTech-Core:".." "..tostring(glob.dytech.core))
			game.player.print("DyTech-Automation:".." "..tostring(glob.dytech.automation))
			game.player.print("DyTech-Compatibility".." "..tostring(glob.dytech.compatibility))
			game.player.print("DyTech-Dynamic:".." "..tostring(glob.dytech.dynamic))
			game.player.print("DyTech-Energy:".." "..tostring(glob.dytech.energy))
			game.player.print("DyTech-Inserters:".." "..tostring(glob.dytech.inserters))
			game.player.print("DyTech-Logistic:".." "..tostring(glob.dytech.logistic))
			game.player.print("DyTech-Metallurgy:".." "..tostring(glob.dytech.metallurgy))
			game.player.print("DyTech-Meteors:".." "..tostring(glob.dytech.meteors))
			game.player.print("DyTech-Modules:".." "..tostring(glob.dytech.modules))
			game.player.print("DyTech-Storage:".." "..tostring(glob.dytech.storage))
			game.player.print("DyTech-Tools:".." "..tostring(glob.dytech.tools))
			game.player.print("DyTech-Transportation:".." "..tostring(glob.dytech.transportation))
			game.player.print("DyTech-Warfare:".." "..tostring(glob.dytech.warfare))
  end,
  
  CounterPrint = function() 
	fs.CounterPrinter()
  end,
  
  CounterPrintExport = function()
	game.makefile("DyTech-Counters.txt", serpent.block(glob.counter))
  end,
  
  CounterPrint2 = function() 
	fs.CounterPrinter2()
  end,
  
  CounterPrint2Export = function()
	game.makefile("DyTech-AdvancedCounters.txt", serpent.block(glob.counter2))
  end,
  
  CombatPrint = function() 
	fs.CombatPrinter()
  end,
  
  CombatPrintExport = function()
	game.makefile("DyTech-CombatCounters.txt", serpent.block(glob.combat))
  end,
  
  ExportAll = function()
	remote.call("DyTech-Core", "CounterPrintExport")
	remote.call("DyTech-Core", "CounterPrint2Export")
	remote.call("DyTech-Core", "CombatPrintExport")
	game.makefile("DyTech-Timer.txt", serpent.block(glob.timer))
	game.makefile("DyTech-ModulesInstalled.txt", serpent.block(glob.dytech))
	game.player.print("Exported all data from Core!")
		if glob.dytech.dynamic==true then
			remote.call("DyTech-Dynamic", "CraftedItemsExport")
			remote.call("DyTech-Dynamic", "PickedItemsExport")
			remote.call("DyTech-Dynamic", "MinedItemsExport")
			game.player.print("Exported all data from Dynamic aswell!")
		end
	game.player.print("You can find all relevant data in the script-output folder!")
  end,
  
  Debugger = function() 
	if glob.debug==true then
		glob.debug = false
		game.player.print("Debugger off")
	else
		glob.debug = true
		game.player.print("Debugger on")
    end
  end,
  
  checkCounter = function(name)
	if type(name) == "string" then
		if name == "all" then return glob.counter.dytech else return glob.counter[name] end
	elseif type(name) == "table" then
		local result = {}
			for _, name in ipairs(name) do
			result[name] = glob.counter[name]
			end
	return result
	else
    return false -- could also use error("unknown name type", 2)
	end
  end,
  
  checkTimer = function(name)
	if type(name) == "string" then
		return glob.timer[name]
	elseif type(name) == "table" then
		local result = {}
			for _, name in ipairs(name) do
			result[name] = glob.timer[name]
			end
	return result
	else
    return false -- could also use error("unknown name type", 2)
	end
  end,
  
  removefromCounter = function(CounterName, Number)
	CounterName = CounterName - Number
  end,
  
  addtoCounter = function(CounterName, Number)
	CounterName = CounterName + Number
  end
  
})
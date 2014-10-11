require "defines"
require "databases/buildingdatabase"
require "databases/craftingdatabase"
require "databases/killingdatabase"
require "databases/miningdatabase"
require "scripts/functions"
require "scripts/oninit"
require "scripts/onload"
require "scripts/gui"
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
local RubberBasicGrowingTime = 7500
local RubberRandomGrowingTime = 4500
local RubberFertilizerBoost = 1.45
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
	fs.ModuleChecker()
	if game.itemprototypes.charcoal then -- item "charcoal" is available, that means treefarm-mod is probably used
		if (remote.interfaces.treefarm) and (remote.interfaces.treefarm.addSeed) then -- check if script-interfaces are available
        local errorMsg = remote.call("treefarm", "addSeed", allInOne) -- call the interface and store the return value
            -- the remote function will return nil on success, otherwise a string with the error-msg
			if errorMsg == nil then -- everything worked fine
				glob.compatibility.treefarm = true
			else
				if errorMsg ~= "seed type already present" then game.player.print(errorMsg) end
			end
		end
	else -- charcoal isn't available, so treefarm-mod isn't installed
		glob.compatibility.treefarm = false
		for seedTypeName, seedTypeInfo in pairs (glob.trees.seedTypes) do
			if game.itemprototypes[seedTypeInfo.states[1]] == nil then
				glob.trees.isGrowing[seedTypeName] = nil
				glob.trees.seedTypes[seedTypeName] = nil
			end
		end
	end
end)

game.onevent(defines.events.onplayercrafteditem, function(event)
	if not glob.CraftedItems[fs.ItemNameLocale(event.itemstack.name)] then
		glob.CraftedItems[fs.ItemNameLocale(event.itemstack.name)] = event.itemstack.count
	else
		glob.CraftedItems[fs.ItemNameLocale(event.itemstack.name)] = glob.CraftedItems[fs.ItemNameLocale(event.itemstack.name)] + event.itemstack.count
	end
incrementDynamicCounters = function(stack)
	if ItemDatabase.craftitems[stack.name] then
		for counter, ingredients in pairs(ItemDatabase.craftitems[stack.name]) do
			if ItemDatabase.craftitems[counter] then
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
	if MineDatabase.mineitems[event.itemstack.name] then
		for counter, ingredients in pairs(MineDatabase.mineitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
	if event.itemstack.name == "raw-wood" then
		if math.random(50) == 25 then
			game.player.insert{name="resin",count=math.random(1,4)}
			game.player.print(game.gettext("msg-rubber"))
		end
	end
	if not glob.MinedItems[fs.ItemNameLocale(event.itemstack.name)] then
		glob.MinedItems[fs.ItemNameLocale(event.itemstack.name)] = event.itemstack.count
	else
		glob.MinedItems[fs.ItemNameLocale(event.itemstack.name)] = glob.MinedItems[fs.ItemNameLocale(event.itemstack.name)] + event.itemstack.count
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	glob.counter2.died = glob.counter2.died + 1
	if KillDatabase.kill[event.entity.name] and event.entity.force.name == "enemy" then
		for counter, ingredients in pairs(KillDatabase.kill[event.entity.name]) do 
			glob.combat[counter]=glob.combat[counter] + ingredients
		end
	end
	if not glob.EntityDied[fs.EntityNameLocale(event.entity.name)] then
		glob.EntityDied[fs.EntityNameLocale(event.entity.name)] = 1
	else
		glob.EntityDied[fs.EntityNameLocale(event.entity.name)] = glob.EntityDied[fs.EntityNameLocale(event.entity.name)] + 1
	end
end)

game.onevent(defines.events.onsectorscanned, function(event)
	glob.counter2.sectorscanned = glob.counter2.sectorscanned + 1
end)

game.onevent(defines.events.onpickedupitem, function(event)
	glob.counter2.pickup = glob.counter2.pickup + event.itemstack.count
	if not glob.PickedItems[fs.ItemNameLocale(event.itemstack.name)] then
		glob.PickedItems[fs.ItemNameLocale(event.itemstack.name)] = event.itemstack.count
	else
		glob.PickedItems[fs.ItemNameLocale(event.itemstack.name)] = glob.PickedItems[fs.ItemNameLocale(event.itemstack.name)] + event.itemstack.count
	end
end)

game.onevent(defines.events.ontick, function(event)
	fs.Timer(event)
	if game.tick%300==0 then
		fs.ModuleChecker()
	end
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
incrementDynamicCounters = function(stack)
	if BuildDatabase.craftitems[stack.name] then
		for counter, ingredients in pairs(BuildDatabase.craftitems[stack.name]) do
			if BuildDatabase.craftitems[counter] then
				incrementDynamicCounters({name=counter, count=ingredients})
			else
				glob.counter[counter]=glob.counter[counter]+(1*ingredients)
			end
		end
	end
end
incrementDynamicCounters(event.createdentity)
	if not glob.BuildEntity[fs.EntityNameLocale(event.createdentity.name)] then
		glob.BuildEntity[fs.EntityNameLocale(event.createdentity.name)] = 1
	else
		glob.BuildEntity[fs.EntityNameLocale(event.createdentity.name)] = glob.BuildEntity[fs.EntityNameLocale(event.createdentity.name)] + 1
	end
end)

game.onevent(defines.events.onchunkgenerated, function(event)
	glob.counter2.chunks = glob.counter2.chunks + 1
end)

game.onevent(defines.events.onguiclick, function(event)
	if event.element.name:find(CoreGUI.guiNames.ExportButton) then
		remote.call("DyTech-Core", "ExportAll")
		CoreGUI.closeAllGUI()
		game.player.print("Be sure to send the files from the script-output folder to Dysoch so he can use that for balancing!")
	elseif event.element.name:find(CoreGUI.guiNames.ExitButton) then
		CoreGUI.closeAllGUI()
	elseif event.element.name:find(CoreGUI.guiNames.BackButton) then
		CoreGUI.closeAllGUI()
		CoreGUI.showMasterGUI()
	elseif event.element.name:find(CoreGUI.guiNames.CoreButton) then
		CoreGUI.closeMasterGUI()
		CoreGUI.showCoreGUI()
	elseif event.element.name:find(CoreGUI.guiNames.DynamicButton) then
		CoreGUI.closeMasterGUI()
		CoreGUI.showDynamicGUI()
	elseif event.element.name:find(CoreGUI.guiNames.DynamicSystemButton) then
		remote.call("DyTech-Dynamic", "ToggleDynamicSystem")
	elseif event.element.name:find(CoreGUI.guiNames.DynamicSystemHardButton) then
		remote.call("DyTech-Dynamic", "ToggleHardMode")
	elseif event.element.name:find(CoreGUI.guiNames.ToolsButton) then
		CoreGUI.closeMasterGUI()
		CoreGUI.showToolsGUI()
	elseif event.element.name:find(CoreGUI.guiNames.ToolsCraftingButton) then
		CoreGUI.closeAllGUI()
		remote.call("DyTech-Tools", "showCraftingGUI")
	elseif event.element.name:find(CoreGUI.guiNames.ToolsItemButton) then
		CoreGUI.closeAllGUI()
		game.player.insert{name="tool-crafting-bench",count=1}
	elseif event.element.name:find(CoreGUI.guiNames.MetallurgyButton) then
		CoreGUI.closeMasterGUI()
		CoreGUI.showMetallurgyGUI()
	elseif event.element.name:find(CoreGUI.guiNames.MetallurgyFluidsButton) then
		remote.call("DyTech-Metallurgy", "RegenerateFluids")
	elseif event.element.name:find(CoreGUI.guiNames.MetallurgyOresButton) then
		remote.call("DyTech-Metallurgy", "RegenerateOres")
	elseif event.element.name:find(CoreGUI.guiNames.CounterButton) then
		CoreGUI.closeCoreGUI()
		CoreGUI.showCounterGUI()
	end
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
  
  ExportAll = function()
	game.makefile("DyTech-Counters.txt", serpent.block(glob.counter))
	game.makefile("DyTech-AdvancedCounters.txt", serpent.block(glob.counter2))
	game.makefile("DyTech-CombatCounters.txt", serpent.block(glob.combat))
	game.makefile("DyTech-Timer.txt", serpent.block(glob.timer))
	game.makefile("DyTech-ModulesInstalled.txt", serpent.block(glob.dytech))
	game.makefile("DyTech-CraftedItems.txt", serpent.block(glob.CraftedItems))
	game.makefile("DyTech-PickedItems.txt", serpent.block(glob.PickedItems))
	game.makefile("DyTech-MinedItems.txt", serpent.block(glob.MinedItems))
	game.makefile("DyTech-EntityDied.txt", serpent.block(glob.EntityDied))
	game.makefile("DyTech-BuildEntity.txt", serpent.block(glob.BuildEntity))
	game.player.print("Exported all data from Core!")
	if remote.call("DyTech-Dynamic", "Export") and glob.dytech.dynamic==true then
		remote.call("DyTech-Dynamic", "Export")
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
  
  removefromCounter = function(name, Number)
	if type(name) == "string" then
	local RandomNumber = math.random(glob.counter[name]/Number)
		glob.counter[name] = (glob.counter[name]-RandomNumber)
		game.player.print(game.gettext("msg-reduction-1").." "..name.." "..game.gettext("msg-reduction-2").." "..tostring(glob.counter[name]).." "..game.gettext("msg-reduction-3").." "..RandomNumber)
	end
  end,
  
  addtoCounter = function(name, Number)
	if type(name) == "string" then
		glob.counter[name] = (glob.counter[name]+Number)
	end
  end,
  
  RevealArea = function(Number)
	game.forces.player.chart({lefttop = {x = -Number, y = -Number}, rightbottom = {x = Number, y = Number}})
  end,
  
  GUI = function()
	CoreGUI.showMasterGUI()
  end,
  
  DynamicGUI = function()
	CoreGUI.showDynamicGUI()
  end,
  
  ModuleChecker = function()
	fs.ModuleChecker()
  end,
  
  ResetAll = function()
	game.player.force.resettechnologies()
	game.player.force.resetrecipes()
  end
})
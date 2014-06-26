require "defines"
require "scripts/database"
require "scripts/functions"

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
local RubberBasicGrowingTime = 3600
local RubberRandomGrowingTime = 1800
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
	fs.OnInit()
	
end)

game.onsave(function()

end)

game.onload(function()
	fs.OnLoad()
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

game.onevent(defines.events.onplayermineditem, function(event)
	glob.counter2.mine = glob.counter2.mine + event.itemstack.count
	if database.mineitems[event.itemstack.name] then
		for counter, ingredients in pairs(database.mineitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
	if event.itemstack.name == "raw-wood" then
		if math.random(100) == 50 then
			game.player.insert{name="resin",count=math.random(1,4)}
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
	if glob.gem~=nil and game.tick%60==0 then
		for i,_ in pairs(glob.gem) do
			local entities=game.findentities({{glob.gem[i].position.x-1,glob.gem[i].position.y-1},{glob.gem[i].position.x+1,glob.gem[i].position.y+1}})
			for x,_ in pairs(entities) do
				if entities[x].valid and entities[x].name=="gem-collector" then
					local gem=game.findentities({{glob.gem[i].position.x-25,glob.gem[i].position.y-25},{glob.gem[i].position.x+25,glob.gem[i].position.y+25}})
					for z,_ in pairs(gem) do 
						if gem[z].name=="item-on-ground" and gem[z].stack.name=="ruby-3" and entities[x].caninsert{name="ruby-3",count=1} then
							entities[x].insert{name="ruby-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						elseif gem[z].name=="item-on-ground" and gem[z].stack.name=="sapphire-3" and entities[x].caninsert{name="sapphire-3",count=1} then
							entities[x].insert{name="sapphire-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						elseif gem[z].name=="item-on-ground" and gem[z].stack.name=="emerald-3" and entities[x].caninsert{name="emerald-3",count=1} then
							entities[x].insert{name="emerald-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						end
					end
				end
			end
		end
	end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	glob.counter2.build = glob.counter2.build + 1
	if database.meteor[event.createdentity.name] then
		for counter, ingredients in pairs(database.meteor[event.createdentity.name]) do 
			glob.meteor[counter]=glob.meteor[counter] + ingredients
		end
	elseif glob.compatibility.treefarm == false then
		if event.createdentity.type == "tree" then
			local currentSeedTypeName = fs.getSeedTypeByEntityName(event.createdentity.name)
			if currentSeedTypeName ~= nil then
				fs.seedPlaced(event.createdentity, currentSeedTypeName)
				return
			end
		end
	--[[Stone Collector Build]]--
	elseif event.createdentity.name == "stone-collector-1" or event.createdentity.name == "stone-collector" then				
		if glob.stone==nil then
			glob.stone={}
			glob.stonecount=0
		end
		glob.stonecount=glob.stonecount+1
		glob.stone[glob.stonecount]={}
		glob.stone[glob.stonecount].position=event.createdentity.position
	--[[Sand Collector Build]]--
--	elseif event.createdentity.name == "sand-collector-1" or event.createdentity.name == "sand-collector" then				
--		if glob.sand==nil then
--			glob.sand={}
--			glob.sandcount=0
--		end
--		glob.sandcount=glob.sandcount+1
--		glob.sand[glob.sandcount]={}
--		glob.sand[glob.sandcount].position=event.createdentity.position
	--[[Coal Collector Build]]--
	elseif event.createdentity.name == "coal-collector-1" or event.createdentity.name == "coal-collector" then				
		if glob.coal==nil then
			glob.coal={}
			glob.coalcount=0
		end
		glob.coalcount=glob.coalcount+1
		glob.coal[glob.coalcount]={}
		glob.coal[glob.coalcount].position=event.createdentity.position
	elseif event.createdentity.name == "gem-collector" then				
		if glob.gem==nil then
			glob.gem={}
			glob.gemcount=0
		end
		glob.gemcount=glob.gemcount+1
		glob.gem[glob.gemcount]={}
		glob.gem[glob.gemcount].position=event.createdentity.position
	end
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
			game.player.print("DyTech-Compatibility".." "..tostring(glob.dytech.compatibility))
			game.player.print("DyTech-Dynamic:".." "..tostring(glob.dytech.dynamic))
			game.player.print("DyTech-Energy:".." "..tostring(glob.dytech.energy))
			game.player.print("DyTech-Inserters:".." "..tostring(glob.dytech.inserters))
			game.player.print("DyTech-Logistic:".." "..tostring(glob.dytech.logistic))
			game.player.print("DyTech-Metallurgy:".." "..tostring(glob.dytech.metallurgy))
			game.player.print("DyTech-Meteors:".." "..tostring(glob.dytech.meteors))
			game.player.print("DyTech-Mining:".." "..tostring(glob.dytech.mining))
			game.player.print("DyTech-Modules:".." "..tostring(glob.dytech.modules))
			game.player.print("DyTech-Storage:".." "..tostring(glob.dytech.storage))
			game.player.print("DyTech-Tools:".." "..tostring(glob.dytech.tools))
			game.player.print("DyTech-Transportation:".." "..tostring(glob.dytech.transportation))
			game.player.print("DyTech-Warfare:".." "..tostring(glob.dytech.warfare))
  end,
  
  CounterPrint = function() 
	fs.CounterPrinter()
  end,
  
  CounterPrint2 = function() 
	fs.CounterPrinter2()
  end,
  
  CombatPrint = function() 
	fs.CombatPrinter()
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
  
  removefromCounter = function(name, number)
	glob.counter[name] = glob.counter[name] - number
  end,
  
  addtoCounter = function(name, number)
	glob.counter[name] = glob.counter[name] + number
  end
  
})
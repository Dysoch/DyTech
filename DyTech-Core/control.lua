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
	if game.itemprototypes.charcoal and glob.compatibility.treefarm=false then --checks for Treefarm mod and if it has already detected it
		glob.compatibility.treefarm=true
		if (remote.interfaces.treefarm) and (remote.interfaces.treefarm.addSeed) then
			local errorMsg = remote.call("treefarm", "addSeed", allInOne)
			if errorMsg ~= nil then game.player.print (errorMsg) end
		end
	else
		glob.compatibility.treefarm=false
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
		for _, counter in pairs(glob.counter) do 
			if (counter~=glob.counter.dytech) then glob.counter.dytech=glob.counter.dytech+counter end
		end
	end
	if game.tick%60==1 then
		glob.counter2.dytech=0
		for _, counter in pairs(glob.counter2) do 
			if (counter~=glob.counter2.dytech) then glob.counter2.dytech=glob.counter2.dytech+counter end
		end
	end
	if game.tick%60==1 then
		glob.combat.dytech=0
		for _, counter in pairs(glob.combat) do 
			if (counter~=glob.combat.dytech) then glob.combat.dytech=glob.combat.dytech+counter end
		end
	end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	glob.counter2.build = glob.counter2.build + 1
	if database.meteor[event.createdentity.name] then
		for counter, ingredients in pairs(database.meteor[event.createdentity.name]) do 
			glob.meteor[counter]=glob.meteor[counter] + ingredients
		end
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
			game.player.print("DyTech-Gems:".." "..tostring(glob.dytech.gems))
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
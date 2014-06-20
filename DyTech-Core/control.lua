require "defines"
require "scripts/database"
require "scripts/functions"

game.oninit(function()
	fs.OnInit()
end)

game.onsave(function()

end)

game.onload(function()
	fs.OnLoad()
end)

game.onevent(defines.events.onplayercrafteditem, function(event)
	if database.craftitems[event.itemstack.name] then
		for counter, ingredients in pairs(database.craftitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
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
end)

game.onevent(defines.events.onsectorscanned, function(event)
	glob.counter2.sectorscanned = glob.counter2.sectorscanned + 1
end)

game.onevent(defines.events.onpickedupitem, function(event)
	glob.counter2.pickup = glob.counter2.pickup + event.itemstack.count
end)

game.onevent(defines.events.ontick, function(event)

end)

game.onevent(defines.events.onbuiltentity, function(event)
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
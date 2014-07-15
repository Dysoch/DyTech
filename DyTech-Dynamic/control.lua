require "defines"
require "scripts/database"
require "scripts/dynamic-system"
require "scripts/dynamic-system-hard"
require "scripts/functions"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "dynamic")
	fs.OnInit()
end)

game.onsave(function()

end)

game.onload(function()
	fs.OnLoad()
end)

game.onevent(defines.events.ontick, function(event)
	if glob.DynamicSystem==true then
		if glob.HardMode==false then
		--[[Dynamic System unlocks]]--
		Dynamic.dynamicUnlocks(event, Dynamic.dsttime(), Dynamic.eventtime)
		--[[Rewards]]--
		Dynamic.dynamicRewards(event, Dynamic.dsttime(), Dynamic.eventtime)
		elseif glob.HardMode==true then
		--[[Dynamic System Hard Mode unlocks]]--
		DynamicHard.dynamicUnlocks(event, DynamicHard.dsttime(), DynamicHard.eventtime)
		--[[Rewards Hard Mode]]--
		DynamicHard.dynamicRewards(event, DynamicHard.dsttime(), DynamicHard.eventtime)
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
			local count=0
			for w in counter:gmatch("([%w%-]+)%.?") do count = count+1 end
			it = counter:gmatch("([%w%-]+)%.?")
			it2 = counter:gmatch("([%w%-]+)%.?")
				if count == 1 then
					glob.crafted[it()]=glob.crafted[it2()]+(stack.count*ingredients)
				elseif count == 2 then
					glob.crafted[it()][it()]=glob.crafted[it2()][it2()]+(stack.count*ingredients)
				else -- more ifs must be added manually.
					game.player.print("Tell Dysoch he needs more dynamic iterator statements for" .. stack.name)
				end
			end
		end
	end
end
incrementDynamicCounters(event.itemstack)
end)

remote.addinterface("DyTech-Dynamic",
{
  CounterPrinterIntermediates = function() 
	fs.CounterPrinterIntermediates()
  end,
  
  ToggleDynamicSystem = function()
	fs.DynamicToggle()
  end,
  
  ToggleHardMode = function()
	fs.HardModeToggle()
  end
})
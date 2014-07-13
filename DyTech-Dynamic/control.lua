require "defines"
require "scripts/database"
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
	--[[Checking to see which modules are installed. This happens every 5 Minutes!]]--
	if event.tick%18000==0 then
		fs.ModuleCheck()
	end
	--[[Dynamic System unlocks]]--
	ds.dynamicUnlocks(event, ds.dsttime(), ds.eventtime)
	--[[Rewards]]--
	ds.dynamicRewards(event, ds.dsttime(), ds.eventtime)
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
  
  --temp call --
  CounterPrint = function() 
	fs.CounterPrinter()
  end,
  
  ToggleDynamicSystem = function()
	fs.DynamicToggle()
  end
})
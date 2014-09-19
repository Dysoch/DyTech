require "defines"
--require "scripts/database"
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

end)

game.onevent(defines.events.onpickedupitem, function(event)

end)

game.onevent(defines.events.onplayermineditem, function(event)end)

remote.addinterface("DyTech-Dynamic",
{  
  ToggleDynamicSystem = function()
	fs.DynamicToggle()
  end,
  
  ToggleHardMode = function()
	fs.HardModeToggle()
  end
})
require "defines"
--require "scripts/database"
require "scripts/dynamic-system"
require "scripts/dynamic-system-hard"
require "scripts/functions"
require "scripts/oninit"
require "scripts/onload"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "dynamic")
	OnInit.OnInit()
end)

game.onsave(function()

end)

game.onload(function()
	OnLoad.OnLoad()
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


remote.addinterface("DyTech-Dynamic",
{  
  Export = function()
	game.makefile("DyTech-Events.txt", serpent.block(glob.EventCheck) .. serpent.block(fs.EventCheckNames))
	game.player.print("Exported all data from Dynamic as well!")
  end,
  
  ToggleDynamicSystem = function()
	fs.DynamicToggle()
  end,
  
  ToggleHardMode = function()
	fs.HardModeToggle()
  end
})
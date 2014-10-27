require "defines"
--require "scripts/database"
require "scripts/dynamic-system"
require "scripts/dynamic-system-hard"
require "scripts/functions"
require "scripts/oninit"
require "scripts/onload"

--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
local function debug(str)
	if debug_master then
		game.player.print(str)
	end
end

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "dynamic")
	remote.call("DyTech-Core", "DynamicGUI")
	OnInit.OnInit()
	if not remote.interfaces["DyTech-Core"] then
		game.player.print("DyTech-Dynamic Will Not Run Without DyTech-Core! Install it to let the Dynamic System Work!")
	end
end)

game.onsave(function()

end)

game.onload(function()
	OnLoad.OnLoad()
end)

game.onevent(defines.events.ontick, function(event)
	if glob.DynamicSystem then
		if not glob.HardMode then
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
	game.makefile("DyTech-Events.txt", serpent.block(glob.EventCheck))
	game.player.print("Exported all data from Dynamic as well!")
  end,
  
  FailureTest = function()
	Dynamic.DynamicFailureTest()
  end,
  
  EventTest = function(name)
	fs.EventFinish(name)
  end,
  
  ToggleDynamicSystem = function()
	if not remote.interfaces["DyTech-Core"] then
		game.player.print("DyTech-Dynamic Will Not Run Without DyTech-Core! Install it to let the Dynamic System Work!")
	else
		fs.DynamicToggle()
	end
  end,
  
  CheckSystem = function()
	return glob.DynamicSystem
  end,
  
  CheckSystemHard = function()
	return glob.HardMode
  end,
  
  ToggleHardMode = function()
	if not remote.interfaces["DyTech-Core"] then
		game.player.print("DyTech-Dynamic Will Not Run Without DyTech-Core! Install it to let the Dynamic System Work!")
	else
		fs.HardModeToggle()
	end
  end
})
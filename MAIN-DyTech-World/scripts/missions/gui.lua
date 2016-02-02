module("MissionGUI", package.seeall)
require "defines"

function showDyTechWorldMissions(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name="mainDyTechWorldMissionFlow"})
player.gui.center["mainDyTechWorldMissionFlow"].add({type="frame", direction="vertical", name="mainDyTechWorldMissionFrame", caption={"dytech-world-gui-mission"}})
adder = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
adder.add({type="label", name="", caption={"stamina", global.Missions.Stamina}})
-- Table Easy
if global.Missions.Timers.EasyActive then
	adder.add({type="label", name="", caption={"mission-active", global.Missions.Timers.Easy}})
else
	adder.add({type="button", name="DyTech-World-Mission-Test-Button-1", caption="Test Mission 1"})
	adder.add({type="button", name="DyTech-World-Mission-Test-Button-2", caption="Test Mission 2"})
	adder.add({type="button", name="DyTech-World-Mission-Test-Button-3", caption="Test Mission 3"})
	adder.add({type="button", name="DyTech-World-Mission-Test-Button-4", caption="Test Mission 4"})
end
-- Table Medium
if global.Missions.Timers.MediumActive then
	adder.add({type="label", name="", caption={"mission-active", global.Missions.Timers.Medium}})
elseif global.XP.Level <= 4 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else

end
-- Table Hard
if global.Missions.Timers.HardActive then
	adder.add({type="label", name="", caption={"mission-active", global.Missions.Timers.Hard}})
elseif global.XP.Level <= 9 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else

end
-- Table Insane
if global.Missions.Timers.InsaneActive then
	adder.add({type="label", name="", caption={"mission-active", global.Missions.Timers.Insane}})
elseif global.XP.Level <= 14 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else

end
adder.add({type="button", name="DyTech-World-Close-Missions-Button", caption={"close"}})
end
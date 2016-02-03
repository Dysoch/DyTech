module("MissionGUI", package.seeall)
require "defines"
require "scripts.missions.mission"

function showDyTechWorldMissions(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name="mainDyTechWorldMissionFlow"})
player.gui.center["mainDyTechWorldMissionFlow"].add({type="frame", direction="vertical", name="mainDyTechWorldMissionFrame", caption={"dytech-world-gui-mission"}})
adder = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
-- Table Easy
adder.add({type="label", name="", caption={"mission-easy"}})
if global.Missions.Timers.EasyActive then
	adder.add({type="button", name="", caption={"mission-active", global.Missions.Timers.Easy}})
else
	adder.add({type="table", name="mainDyTechWorldEasyMissionTable", colspan=4})
	Missions.populateGUIEasyMissionTable(PlayerIndex)
end
-- Table Medium
adder.add({type="label", name="", caption={"mission-medium"}})
if global.Missions.Timers.MediumActive then
	adder.add({type="button", name="", caption={"mission-active", global.Missions.Timers.Medium}})
elseif global.XP.Level <= 4 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else
	adder.add({type="table", name="mainDyTechWorldMediumMissionTable", colspan=4})
	Missions.populateGUIMediumMissionTable(PlayerIndex)
end
-- Table Hard
adder.add({type="label", name="", caption={"mission-hard"}})
if global.Missions.Timers.HardActive then
	adder.add({type="button", name="", caption={"mission-active", global.Missions.Timers.Hard}})
elseif global.XP.Level <= 9 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else
	adder.add({type="table", name="mainDyTechWorldHardMissionTable", colspan=4})
	Missions.populateGUIHardMissionTable(PlayerIndex)
end
-- Table Insane
adder.add({type="label", name="", caption={"mission-insane"}})
if global.Missions.Timers.InsaneActive then
	adder.add({type="button", name="", caption={"mission-active", global.Missions.Timers.Insane}})
elseif global.XP.Level <= 14 then
	adder.add({type="label", name="", caption={"level-low", global.XP.Level}})
else
	adder.add({type="table", name="mainDyTechWorldInsaneMissionTable", colspan=4})
	Missions.populateGUIInsaneMissionTable(PlayerIndex)
end
adder.add({type="button", name="DyTech-World-Close-Missions-Button", caption={"close"}})
end
module("Missions", package.seeall)
require "config"

Mission_Table = {
	-- Easy
	["find-resource-node"] = {Diff="Easy", Stamina=1, Time=5, Amount1=1, Amount2=5},
	["find-water"] = {Diff="Easy", Stamina=2, Time=10, Amount1=2, Amount2=10},
	["find-trees"] = {Diff="Easy", Stamina=5, Time=20, Amount1=5, Amount2=20},
	["find-coal"] = {Diff="Easy", Stamina=10, Time=30, Amount1=15, Amount2=50},
	-- Medium
	["search-life"] = {Diff="Medium", Stamina=25, Time=60, Amount1=10, Amount2=25},
	["fight-creeper"] = {Diff="Medium", Stamina=40, Time=90, Amount1=25, Amount2=75},
	["search-life2"] = {Diff="Medium", Stamina=80, Time=120, Amount1=25, Amount2=100},
	["search-life3"] = {Diff="Medium", Stamina=100, Time=150, Amount1=25, Amount2=100},
	-- Hard
	["search-life5"] = {Diff="Hard", Stamina=150, Time=300, Amount1=25, Amount2=100},
	["search-life6"] = {Diff="Hard", Stamina=200, Time=480, Amount1=25, Amount2=100},
	["search-life7"] = {Diff="Hard", Stamina=300, Time=600, Amount1=25, Amount2=100},
	["search-life8"] = {Diff="Hard", Stamina=500, Time=900, Amount1=25, Amount2=100},
	-- Insane
	["search-life9"] = {Diff="Insane", Stamina=1000, Time=1500, Amount1=25, Amount2=100},
	["search-life10"] = {Diff="Insane", Stamina=1500, Time=1800, Amount1=25, Amount2=100},
	["search-life11"] = {Diff="Insane", Stamina=2500, Time=2400, Amount1=25, Amount2=100},
	["search-life12"] = {Diff="Insane", Stamina=10000, Time=3600, Amount1=2500, Amount2=10000},
}

function MissionEasyLoot()
	local Loot = {"iron-ore", "copper-ore", "coal", "stone", "raw-wood", "wood", "iron-plate", "copper-plate"}
	GivenReward = Loot[math.random(#Loot)]
	return GivenReward
end

function MissionMediumLoot()
	local Loot = {"iron-plate", "copper-plate", "steel-plate", "basic-bullet-magazine", "sulfur"}
	GivenReward = Loot[math.random(#Loot)]
	return GivenReward
end

function MissionHardLoot()
	local Loot = {"iron-ore", "copper-ore", "coal", "stone", "raw-wood", "wood", "iron-plate", "copper-plate"}
	GivenReward = Loot[math.random(#Loot)]
	return GivenReward
end

function MissionInsaneLoot()
	local Loot = {"iron-ore", "copper-ore", "coal", "stone", "raw-wood", "wood", "iron-plate", "copper-plate"}
	GivenReward = Loot[math.random(#Loot)]
	return GivenReward
end

function StartMission(data)
	global.Missions.Stamina = (global.Missions.Stamina-data.Stamina)
	if data.Diff == "Easy" then
		global.Missions.Timers.EasyActive = true
		global.Missions.Timers.Easy = data.Time
		global.Missions.Active.Easy = {}
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(data.Amount1,data.Amount2)}
	elseif data.Diff == "Medium" then
		global.Missions.Timers.MediumActive = true
		global.Missions.Timers.Medium = data.Time
		global.Missions.Active.Medium = {}
		global.Missions.Active.Medium = {Item=MissionMediumLoot(), Amount=math.random(data.Amount1,data.Amount2)}
	elseif data.Diff == "Hard" then
		global.Missions.Timers.HardActive = true
		global.Missions.Timers.Hard = data.Time
		global.Missions.Active.Hard = {}
		global.Missions.Active.Hard = {Item=MissionHardLoot(), Amount=math.random(data.Amount1,data.Amount2)}
	elseif data.Diff == "Insane" then
		global.Missions.Timers.InsaneActive = true
		global.Missions.Timers.Insane = data.Time
		global.Missions.Active.Insane = {}
		global.Missions.Active.Insane = {Item=MissionInsaneLoot(), Amount=math.random(data.Amount1,data.Amount2)}
	end
end

function populateGUIEasyMissionTable(PlayerIndex)
local player = game.players[PlayerIndex]
local mainMissionTableFrame = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
	for _, name in pairs(mainMissionTableFrame["mainDyTechWorldEasyMissionTable"].children_names) do
		mainMissionTableFrame["mainDyTechWorldEasyMissionTable"][name].destroy()
	end
	for MissionName, info in pairs(Mission_Table) do
	local data = Mission_Table[MissionName]
		if global.Missions.Stamina >= data.Stamina and data.Diff=="Easy" then
			mainMissionTableFrame["mainDyTechWorldEasyMissionTable"].add({type="button", name=MissionName, caption={MissionName, data.Stamina}})
		end
	end
end

function populateGUIMediumMissionTable(PlayerIndex)
local player = game.players[PlayerIndex]
local mainMissionTableFrame = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
	for _, name in pairs(mainMissionTableFrame["mainDyTechWorldMediumMissionTable"].children_names) do
		mainMissionTableFrame["mainDyTechWorldMediumMissionTable"][name].destroy()
	end
	for MissionName, info in pairs(Mission_Table) do
	local data = Mission_Table[MissionName]
		if global.Missions.Stamina >= data.Stamina and data.Diff=="Medium" then
			mainMissionTableFrame["mainDyTechWorldMediumMissionTable"].add({type="button", name=MissionName, caption={MissionName, data.Stamina}})
		end
	end
end

function populateGUIHardMissionTable(PlayerIndex)
local player = game.players[PlayerIndex]
local mainMissionTableFrame = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
	for _, name in pairs(mainMissionTableFrame["mainDyTechWorldHardMissionTable"].children_names) do
		mainMissionTableFrame["mainDyTechWorldHardMissionTable"][name].destroy()
	end
	for MissionName, info in pairs(Mission_Table) do
	local data = Mission_Table[MissionName]
		if global.Missions.Stamina >= data.Stamina and data.Diff=="Hard" then
			mainMissionTableFrame["mainDyTechWorldHardMissionTable"].add({type="button", name=MissionName, caption={MissionName, data.Stamina}})
		end
	end
end

function populateGUIInsaneMissionTable(PlayerIndex)
local player = game.players[PlayerIndex]
local mainMissionTableFrame = player.gui.center["mainDyTechWorldMissionFlow"]["mainDyTechWorldMissionFrame"]
	for _, name in pairs(mainMissionTableFrame["mainDyTechWorldInsaneMissionTable"].children_names) do
		mainMissionTableFrame["mainDyTechWorldInsaneMissionTable"][name].destroy()
	end
	for MissionName, info in pairs(Mission_Table) do
	local data = Mission_Table[MissionName]
		if global.Missions.Stamina >= data.Stamina and data.Diff=="Insane" then
			mainMissionTableFrame["mainDyTechWorldInsaneMissionTable"].add({type="button", name=MissionName, caption={MissionName, data.Stamina}})
		end
	end
end
require "defines"
require "config"
require "scripts.functions"
require "scripts.gui"
require "scripts.world-generation"
require "scripts.xp"
require "scripts.missions.utils"
require "scripts.missions.gui"
require "scripts.missions.mission-easy"
--require "scripts.missions.mission-medium"
--require "scripts.missions.mission-hard"
--require "scripts.missions.mission-insane"

--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
debug_GUI = false -- debugger for GUI
function debug(str, statement)
	if debug_master then
		PlayerPrint(str)
	end
	if log_everything then log(str, statement) end
end
log_everything = true -- keep this true all times! only disable if the game lags. the info it generates is needed by the DyTech Team to debug your savegame if an bug or error happens!
function log(str, statement)
local seconds = math.floor(game.tick/60)
local minutes = math.floor(seconds/60)
local hours = math.floor(minutes/60)
	if not global.Log then global.Log = {} end
	if not statement then
		global.Log[hours..":"..(minutes-(hours*60))..":"..(seconds-(minutes*60))] = str
	end
end

function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

script.on_init(function()
	fs.Startup()
	MissionUtils.Startup()
	debug("Started up")
end)

script.on_load(function()
	
end)

script.on_event(defines.events.on_tick, function(event)
	if event.tick%216000==1 and not Config.Leveled_Loot_List then
		fs.Add_To_Random_Entity()
	end
	--if event.tick%18000==17999 then
	if event.tick%60==59 then --test line
		MissionUtils.StaminaIncrease()
		if not remote.interfaces["DyTech-Core"] then
			MissionUtils.GUI()
		end
	end
	if event.tick%60==59 then
		if global.Missions.Timers.EasyActive then
			global.Missions.Timers.Easy = (global.Missions.Timers.Easy-1)
			if global.Missions.Timers.Easy == 0 then
				global.Missions.Timers.EasyActive = false
				MissionUtils.Reward(global.Missions.Active.Easy)
			end
		end
		if global.Missions.Timers.MediumActive then
			global.Missions.Timers.Medium = (global.Missions.Timers.Medium-1)
			if global.Missions.Timers.Medium == 0 then
				global.Missions.Timers.MediumActive = false
				MissionUtils.Reward(global.Missions.Active.Medium)
			end
		end
		if global.Missions.Timers.HardActive then
			global.Missions.Timers.Hard = (global.Missions.Timers.Hard-1)
			if global.Missions.Timers.Hard == 0 then
				global.Missions.Timers.HardActive = false
				MissionUtils.Reward(global.Missions.Active.Hard)
			end
		end
		if global.Missions.Timers.InsaneActive then
			global.Missions.Timers.Insane = (global.Missions.Timers.Insane-1)
			if global.Missions.Timers.Insane == 0 then
				global.Missions.Timers.InsaneActive = false
				MissionUtils.Reward(global.Missions.Active.Insane)
			end
		end
		if global.GUI1 then
			GUI.closeGUI("Main", global.GUI1Active)
			GUI.showDyTechWorldGUI(global.GUI1Active)
		end
	end
end)

script.on_event(defines.events.on_player_crafted_item, function(event)
	XP.Crafting_Speed_Bonus(event)
	XP.GUI_checker()
end)

script.on_event(defines.events.on_player_mined_item, function(event)
	XP.Mining_Speed_Bonus(event)
	XP.GUI_checker()
end)

script.on_event(defines.events.on_entity_died, function(event)
	XP.Fighting_Bonus(event)
end)

script.on_event(defines.events.on_chunk_generated, function(event)
	fs.Chunk_Increaser()
	XP.Explore_Level(event)
	XP.GUI_checker()
	if fs.checkMatch100(33) then
		if fs.checkMatch100(45) then
			Generation.Loot_Spawner(31, 5, event)
		end
		if fs.checkMatch1000(45) then
			Generation.Ruins_Spawner(event)
		end
		if fs.checkMatch100(26) and global.Counter.Chunks > 250 then
			Generation.Chest_Spawner(63, 10, 1000, false, event)
		end
	end
	if fs.checkMatch100(50) and global.Counter.Chunks > (500*global.RandomEntity.Massive_Ruins_Spawned.Total) then
		if not fs.CheckTesters() then
			Generation.StartTestersRuins(event)
		end
	end
end)

script.on_event(defines.events.on_research_finished, function(event)
	if not event.research.name == "blank" then
		global.XP.Research = global.XP.Research + (math.random()/5)
		XP.GUI_checker()
	end
end)

script.on_event(defines.events.on_built_entity, function(event)
	XP.Building_Level(event)
	XP.GUI_checker()
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	XP.Building_Level(event)
	XP.GUI_checker()
end)

script.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	if event.element.name == "DyTech-World-Button" then
		GUI.showDyTechWorldGUI(playerIndex)
		global.GUI1Active = playerIndex
	elseif event.element.name == "DyTech-World-Close-Button" then
		GUI.closeGUI("Main", playerIndex)
	elseif event.element.name == "DyTech-World-Close-Missions-Button" then
		GUI.closeGUI("Missions", playerIndex)
	elseif event.element.name == "XP-checkbox" then
		if event.element.state == true then
			global.XP.GUI = true
			XP.GUI_checker()
		else
			global.XP.GUI = false
			XP.GUI_checker()
		end
	elseif event.element.name == "DyTech-Extinction-Button" then
		game.forces["enemy"].kill_all_units()
		global.XP.Fighting.Extinction = global.XP.Fighting.Extinction - 1
		XP.GUI_checker()
	elseif event.element.name == "DyTech-Research-Finish-Button" then
		if not game.forces.player.current_research then
			return
		else
			RESEARCH = game.forces.player.current_research.name
			game.forces.player.technologies[RESEARCH].researched = true
			global.XP.Research = global.XP.Research - 1
			game.forces.player.current_research = "blank"
			XP.GUI_checker()
		end
	elseif event.element.name == "DyTech-World-Mission-Test-Button-1" then
		MissionEasy.Mission_001()
		GUI.closeGUI("Missions", playerIndex)
		MissionGUI.showDyTechWorldMissions(playerIndex)
	elseif event.element.name == "DyTech-World-Mission-Test-Button-2" then
		MissionEasy.Mission_002()
		GUI.closeGUI("Missions", playerIndex)
		MissionGUI.showDyTechWorldMissions(playerIndex)
	elseif event.element.name == "DyTech-World-Mission-Test-Button-3" then
		MissionEasy.Mission_003()
		GUI.closeGUI("Missions", playerIndex)
		MissionGUI.showDyTechWorldMissions(playerIndex)
	elseif event.element.name == "DyTech-World-Mission-Test-Button-4" then
		MissionEasy.Mission_004()
		GUI.closeGUI("Missions", playerIndex)
		MissionGUI.showDyTechWorldMissions(playerIndex)
	elseif event.element.name == "DyTech-World-Mission-Button" then
		GUI.closeGUI("Missions", playerIndex)
		MissionGUI.showDyTechWorldMissions(playerIndex)
	end
end)

remote.add_interface("DyTech-World",
{  
	Chart = function(Amount)
		game.forces.player.chart(game.get_surface("nauvis"), {left_top = {x = -Amount, y = -Amount}, right_bottom = {x = Amount, y = Amount}})
		debug("Charted the map with size of "..Amount)
	end,
	
	ChartHuge = function()
		game.forces.player.chart(game.get_surface("nauvis"), {left_top = {x = -5000, y = -5000}, right_bottom = {x = 5000, y = 5000}})
		debug("Insanely Charted the map with size of 5000 each direction!")
	end,
	
	Logger = function()
		game.makefile("DyTech/Config/World.txt", serpent.block(Config))
		game.makefile("DyTech/Log/World.txt", serpent.block(global.Log))
		game.makefile("DyTech/Datadump/World-XP.txt", serpent.block(global.XP))
		game.makefile("DyTech/Datadump/World-Counter.txt", serpent.block(global.Counter))
		game.makefile("DyTech/Datadump/World-RandomEntity.txt", serpent.block(global.RandomEntity))
		debug("Made File of all globals in script-output")
	end,
	
	Chest_Table_Insert = function(NAME)
		table.insert(global.RandomEntity.Chests,NAME)
		debug("Remote Call: Added Chest: "..NAME)
	end,
	
	Check_Which_Loot_List = function()
		return Config.Leveled_Loot_List
	end,
	
	Loot_Table_Insert = function(NAME)
		if not global.RandomEntity then global.RandomEntity = {} end
		if not global.RandomEntity.Loot then global.RandomEntity.Loot = {"stone"} end
		table.insert(global.RandomEntity.Loot,NAME)
		debug("Remote Call: Added Loot: "..NAME)
	end,
	
	Special_Loot_Table_Insert = function(NAME)
		if not global.RandomEntity then global.RandomEntity = {} end
		if not global.RandomEntity.Special_Loot then global.RandomEntity.Special_Loot = {"pistol"} end
		table.insert(global.RandomEntity.Special_Loot,NAME)
		debug("Remote Call: Added Special Loot: "..NAME)
	end,
	
	GUI = function()
		if not global.XP.GUI then
			global.XP.GUI = true
			XP.GUI_checker()
		else
			global.XP.GUI = false
			XP.GUI_checker()
		end
	end,
	
	cheat = function()
		global.XP.Fighting.Killed_Set = global.XP.Fighting.Killed_Set + 100
	end,
	
	Ammo_Insert = function(name)
		if not global.XP then fs.Startup() end
		table.insert(global.XP.Fighting.Category,name)
	end,
	
	TestMission001 = function()
		MissionEasy.Mission_001()
	end
})
require "defines"
require "config"
require "database/research"
require "database/research-system"
require "scripts/automatic-research-system"
require "scripts/auto-researcher"
require "scripts/collectors"
require "scripts/manual-research-system"
require "scripts/rs-functions"
require "scripts/functions"
require "scripts/gui"
require "scripts/guinames"
require "scripts/test-functions"

--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!
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
end

function PlayerPrint(message)
	if global.Messages then
		for _,player in pairs(game.players) do
			player.print(message)
		end
	end
end

game.on_init(function()
	if not global.ResearchSystem then global.ResearchSystem = {} end
fs.Startup()
end)

game.on_save(function()

end)

game.on_load(function()
	if not global.ResearchSystem then global.ResearchSystem = {} end
	if not global.ResearchSystem.Unlocked then global.ResearchSystem.Unlocked = {} end
	if not global.Collectors then global.Collectors = {} end
end)

game.on_event(defines.events.ontick, function(event)
	if Research_System and global.ResearchSystem.RSAutomatic then	
		ARS.AutomaticRS(event)
	end
	if game.tick%300==1 then
		GUI.CreateButton()
	end
	if Collectors then
		if not global.Collectors.Working then
			fs.StartupCollectors()
		else
			CollectorFunctions.ticker()
		end
	end
end)

game.on_event(defines.events.on_research_started, function(event)
if Research_System then	
	if not global.ResearchSystem.science then global.ResearchSystem.science=0 end
	debug("Research Started ("..tostring(event.research)..")")
	if not global.Technology[event.research].Started then
		local ingredients = game.forces.player.technologies[event.research].researchunitcount
		global.ResearchSystem.science=global.ResearchSystem.science+(ingredients/10)
		debug("Research found in globalal table and increased: ("..tostring(ingredients/10)..") Total now: "..tostring(global.ResearchSystem.science))
		global.Technology[event.research].Started = true
	end
else 
	if not global.Technology[event.research] then
		fs.InitHalfwayTechnology(event)
	else
		global.Technology[event.research].Started = true
	end
end
end)

game.on_event(defines.events.on_research_finished, function(event)
if Auto_Researcher then
	AutoResearch.AutoMode()
end
if Research_System then	
	if not global.ResearchSystem.science then global.ResearchSystem.science=0 end
	debug("Research Finished ("..tostring(event.research)..")")
	if not global.Technology[event.research].Finished then
		local ingredients = game.forces.player.technologies[event.research].research_unit_count
		global.ResearchSystem.science=global.ResearchSystem.science+((ingredients/10)*9)
		debug("Research found in globalal table and increased: ("..tostring((ingredients/10)*9)..") Total now: "..tostring(global.ResearchSystem.science))
		global.Technology[event.research].Finished = true
	end
else 	
	global.Technology[event.research].Finished = true
end
end)

game.on_event(defines.events.on_built_entity, function(event)
	if Collectors then
		CollectorFunctions.builtEntity(event)
	end
end)

game.on_event(defines.events.on_robot_built_entity, function(event)
	if Collectors then
		CollectorFunctions.builtEntity(event)
	end
end)

game.on_event(defines.events.on_playe_rmined_item, function(event)
	if Collectors and event.item_stack.name == "item-collector-area" then
		if global.Collectors.Amount==0 then
			global.Collectors.Amount = 0
		else
			global.Collectors.Amount = global.Collectors.Amount - 1
		end
	end
end)

game.on_event(defines.events.on_robot_mined, function(event)
	if Collectors and event.item_stack.name == "item-collector-area" then
		if global.Collectors.Amount==0 then
			global.Collectors.Amount = 0
		else
			global.Collectors.Amount = global.Collectors.Amount - 1
		end
	end
end)

game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	if event.element.name == "DynamicsButton" then
		GUI.closeGUI("all", playerIndex)
		GUI.showDynamicsMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.CloseButton) then
		GUI.closeGUI("all", playerIndex)
		RSF.ClearToUnlock()
	elseif event.element.name:find(guiNames.MRSBackButton1) then
		GUI.closeGUI("ResearchUnlock", playerIndex)
	elseif event.element.name:find(guiNames.MRSBackButton2) then
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.MRSUnlockButton) then
		RSF.RSUnlock(global.ResearchSystem.ToUnlock)
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif RSDatabase.ItemUnlock[event.element.name] then
		global.ResearchSystem.ToUnlock = event.element.name
		GUI.closeGUI("ResearchUnlock", playerIndex)
		MRS.showUnlockGUIBase(playerIndex, global.ResearchSystem.ToUnlock)
	elseif event.element.name:find(guiNames.ResearchButton) then
		if global.ResearchSystem.RSManual then
			GUI.closeGUI("all", playerIndex)
			MRS.showResearchMainGUI(playerIndex)
		else
			PlayerPrint({"rs-manual-disabled"})
		end
	elseif event.element.name == "DebugAddPoints" then
		global.ResearchSystem.science = global.ResearchSystem.science + 100000
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.Tier1Base) then
		MRS.showUnlockTableGUI(playerIndex, 1)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier2Base) then
		MRS.showUnlockTableGUI(playerIndex, 2)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier3Base) then
		MRS.showUnlockTableGUI(playerIndex, 3)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier4Base) then
		MRS.showUnlockTableGUI(playerIndex, 4)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.CollectorsButton) then
		GUI.closeGUI("all", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.CollectorWorkingButton) then
		if global.Collectors.Working then
			global.Collectors.Working = false
		else
			global.Collectors.Working = true
		end
		GUI.closeGUI("Collectors", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.CollectorAutoRangeButton) then
		if not global.Collectors.AutomaticRange then
			global.Collectors.AutomaticRange = true
		else
			global.Collectors.AutomaticRange = false
		end
		GUI.closeGUI("Collectors", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.CollectorFilteredButton) then
		if global.Collectors.Filtered then
			global.Collectors.Filtered = false
		else
			global.Collectors.Filtered = true
		end
		GUI.closeGUI("Collectors", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.CollectorRangeMinusButton) then
		if global.Collectors.Range == 5 then
			global.Collectors.Range = 50
		else
			global.Collectors.Range = global.Collectors.Range - 1
		end
		GUI.closeGUI("Collectors", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.CollectorRangePlusButton) then
		if global.Collectors.Range == 50 then
			global.Collectors.Range = 5
		else
			global.Collectors.Range = global.Collectors.Range + 1
		end
		GUI.closeGUI("Collectors", playerIndex)
		CollectorFunctions.showCollectorGUI(playerIndex)
	elseif event.element.name:find(guiNames.DebugButton1) then
		GUI.closeGUI("all", playerIndex)
		remote.call("DyTech-Dynamics", "DataDump")
		if remote.interfaces["DyTech-Core"] then
			remote.call("DyTech-Core", "Logger")
		end
		if remote.interfaces["DyTech-War"] then
			remote.call("DyTech-War", "DataDump")
		end
	end
end)

remote.add_interface("DyTech-Dynamics",
{  
	TestResearch = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				TestFunctions.TestResearch(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			TestFunctions.TestResearch(pIndex)
		end
	end,
	
	RSRemote = function(name)
		if Research_System then
			RSF.RSUnlock(name)
		else
			PlayerPrint({"rs-disabled"})
		end
	end,
	
	DataDumpDatabase = function()
		global.DatabaseNames = {} 
		global.DatabaseNumbers = {}
		for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		local data = RSDatabase.ItemUnlock[RecipeName]
			table.insert(global.DatabaseNames,RecipeName)
			table.insert(global.DatabaseNumbers,data.Points)
		end
		game.makefile("DataDump/Database-Base-Names.xls", serpent.block(global.DatabaseNames))
		game.makefile("DataDump/Database-Base-Numbers.xls", serpent.block(global.DatabaseNumbers))
	end,
	
	DataDump = function()
		game.makefile("DyTech/DataDump/ResearchSystem.txt", serpent.block(global.ResearchSystem))
		game.makefile("DyTech/DataDump/Collectors.txt", serpent.block(global.Collectors))
		game.makefile("DyTech/DataDump/Technology.txt", serpent.block(global.Technology))
		game.makefile("DyTech/Log/Dynamics.txt", serpent.block(global.Log))
	end,
	
	SwitchRS = function()
		if global.ResearchSystem.RSAutomatic==true then
			global.ResearchSystem.RSAutomatic = false
			global.ResearchSystem.RSManual = true
			PlayerPrint({"rs-manual"})
		else
			global.ResearchSystem.RSAutomatic = true
			global.ResearchSystem.RSManual = false
			PlayerPrint({"rs-automatic"})
		end
	end,
	
	ToggleMessages = function()
		if global.Messages==true then
			PlayerPrint({"msg-off"})
			global.Messages = false
		else
			global.Messages = true
			PlayerPrint({"msg-on"})
		end
	end
})
require "defines"
require "config"
require "database/research"
require "database/research-system"
require "scripts/automatic-research-system"
require "scripts/auto-researcher-new"
require "scripts/collectors"
require "scripts/dynamic-power"
require "scripts/dynamic-power-boost"
require "scripts/manual-research-system"
require "scripts/rs-functions"
require "scripts/functions"
require "scripts/gui"
require "scripts/guinames"
require "scripts/test-functions"

--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
debug_GUI = true -- debugger for GUI
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
	if global.Messages then
		for _,player in pairs(game.players) do
			player.print(message)
		end
	end
end

game.on_init(function()
	fs.Startup()
	Power.Startup()
	AutoResearch.Startup()
end)

game.on_load(function()

end)

game.on_event(defines.events.on_tick, function(event)
	if Config.Research_System and global.ResearchSystem.RSAutomatic then	
		ARS.AutomaticRS(event)
	end
	if Config.Collectors then
		if not global.Collectors.Working then
			fs.StartupCollectors()
		else
			CollectorFunctions.ticker()
		end
	end
	if Config.Dynamic_Power and event.tick%60==1 then
		Power.Ticker()
	end
	RSF.Lab_Increament(event)
end)

game.on_event(defines.events.on_research_started, function(event)
--[[if Config.Research_System then	
	fs.InitHalfwayTechnology(event)
	if not global.ResearchSystem.science then global.ResearchSystem.science=0 end
	debug("Research Started ("..tostring(event.research.name)..")")
	if not global.Technology[event.research.name].Started then
		local ingredients = game.forces.player.technologies[event.research.name].research_unit_count
		global.ResearchSystem.science=global.ResearchSystem.science+(ingredients/10)
		debug("Research found in global table and increased: ("..tostring(ingredients/10)..") Total now: "..tostring(global.ResearchSystem.science))
	end
else]]-- 
	if not global.Technology[event.research.name] then
		fs.InitHalfwayTechnology(event)
	end
	global.Technology[event.research.name].Started = true
end)

game.on_event(defines.events.on_research_finished, function(event)
--[[if Config.Research_System then	
	if not global.ResearchSystem.science then global.ResearchSystem.science=0 end
	debug("Research Finished ("..tostring(event.research.name)..")")
	if not global.Technology[event.research.name].Finished then
		local ingredients = game.forces.player.technologies[event.research.name].research_unit_count
		global.ResearchSystem.science=global.ResearchSystem.science+((ingredients/10)*9)
		debug("Research found in global table and increased: ("..tostring((ingredients/10)*9)..") Total now: "..tostring(global.ResearchSystem.science))
		global.Technology[event.research.name].Finished = true
	end
end	]]--
global.Technology[event.research.name].Finished = true
if Config.Auto_Researcher then
	global.Auto_Researcher = {}
	for NAME, TECH in pairs(global.Technology) do
		if not TECH.Finished then
			table.insert(global.Auto_Researcher,NAME)
		end
	end
	if global.AutoResearcher.State then
		AutoResearch.Select_New_Tech()
	end
end
end)

game.on_event(defines.events.on_built_entity, function(event)
	if Config.Collectors then
		CollectorFunctions.builtEntity(event)
	end
	if Config.Dynamic_Power then
		Power.Built(event)
	end
end)

game.on_event(defines.events.on_robot_built_entity, function(event)
	if Config.Collectors then
		CollectorFunctions.builtEntity(event)
	end
	if Config.Dynamic_Power then
		Power.Built(event)
	end
end)

game.on_event(defines.events.on_player_mined_item, function(event)
	if Config.Collectors and event.item_stack.name == "item-collector-area" then
		if global.Collectors.Amount==0 then
			global.Collectors.Amount = 0
		else
			global.Collectors.Amount = global.Collectors.Amount - 1
		end
	end
	if Config.Dynamic_Power then
		Power.Mined_Entity(event)
	end
end)

game.on_event(defines.events.on_robot_mined, function(event)
	if Config.Collectors and event.item_stack.name == "item-collector-area" then
		if global.Collectors.Amount==0 then
			global.Collectors.Amount = 0
		else
			global.Collectors.Amount = global.Collectors.Amount - 1
		end
	end
	if Config.Dynamic_Power then
		Power.Mined_Entity(event)
	end
end)

game.on_event(defines.events.on_entity_died, function(event)
	if Config.Dynamic_Power then
		Power.Died_Entity(event)
	end
end)

game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	if event.element.name:find(guiNames.CloseButton) then
		GUI.closeGUI("all", playerIndex)
		RSF.ClearToUnlock()
        remote.call("DyTech-Core", "OpenMainGUI", playerIndex)
	elseif event.element.name:find(guiNames.MRSBackButton1) then
		GUI.closeGUI("ResearchUnlock", playerIndex)
	elseif event.element.name:find(guiNames.MRSBackButton2) then
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.MRSUnlockButton) then
		RSF.RSUnlock(global.ResearchSystem.ToUnlock)
		GUI.closeGUI("all", playerIndex)
		MRS.showUnlockTableGUI(playerIndex, RSF.DSgetResearchLevel(global.ResearchSystem.ItemUnlock[global.ResearchSystem.ToUnlock].Tech))
	elseif global.ResearchSystem.ItemUnlock[event.element.name] then
		global.ResearchSystem.ToUnlock = event.element.name
		GUI.closeGUI("ResearchUnlock", playerIndex)
		MRS.showUnlockGUIBase(playerIndex, global.ResearchSystem.ToUnlock)
	elseif event.element.name:find(guiNames.ResearchButton) then
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name == "DebugAddPoints" then
		remote.call("DyTech-Dynamics", "TotalSciencePoints")
		global.ResearchSystem.science = global.ResearchSystem.science + global.ScienceTemp
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
	elseif event.element.name == "DyTech-Research-System-Switch" then
		remote.call("DyTech-Dynamics", "SwitchRS")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
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
	elseif event.element.name == "DyTech-Dynamics-Button" then
        remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
		GUI.showDynamicsMainGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Button" then
        remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
		GUI.showDynamicsMainGUI(playerIndex)	
	elseif event.element.name == "DyTech-Dynamics-AutoResearcher-Button" then
		GUI.closeGUI("all", playerIndex)
		AutoResearch.showAutoResearcherGUI(playerIndex)	
	elseif event.element.name == "auto-researcher-tier-1" then	 
		if global.AutoResearcher.Tier1 then global.AutoResearcher.Tier1 = false else global.AutoResearcher.Tier1 = true end
	elseif event.element.name == "auto-researcher-tier-2" then	 
		if global.AutoResearcher.Tier2 then global.AutoResearcher.Tier2 = false else global.AutoResearcher.Tier2 = true end
	elseif event.element.name == "auto-researcher-tier-3" then	 
		if global.AutoResearcher.Tier3 then global.AutoResearcher.Tier3 = false else global.AutoResearcher.Tier3 = true end
	elseif event.element.name == "auto-researcher-tier-4" then	 
		if global.AutoResearcher.Tier4 then global.AutoResearcher.Tier4 = false else global.AutoResearcher.Tier4 = true end
	elseif event.element.name == "auto-researcher-state" then	 
		if global.AutoResearcher.State then global.AutoResearcher.State = false else global.AutoResearcher.State = true end
	elseif event.element.name:find(guiNames.DynamicPowerButton) then
		GUI.closeGUI("all", playerIndex)
		Power.GUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamic-Power-Close-Button" then
		GUI.closeGUI("all", playerIndex)
        remote.call("DyTech-Core", "OpenMainGUI", playerIndex)
	elseif event.element.name == "DyTech-Dynamic-Power-Crafter-Button" then
		PowerBoost.Crafting_Boost("start")
	elseif event.element.name == "DyTech-Dynamic-Power-Miner-Button" then
		PowerBoost.Mining_Boost("start")
	elseif event.element.name == "DyTech-Dynamic-Power-Research-Button" then
		PowerBoost.Researching_Boost("start")
	elseif event.element.name == "DyTech-Dynamics-Back-Button" then
		GUI.closeGUI("all", playerIndex)
		GUI.showDynamicsMainGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Unlocks" then
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Quickbar-Minus-Button" then
		RSF.Quickbars("-")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Quickbar-Plus-Button" then
		if game.forces.player.quickbar_count < 20 then 
			RSF.Quickbars("+")
			GUI.closeGUI("all", playerIndex)
			MRS.showResearchExtraGUI(playerIndex)	
		end
	elseif event.element.name == "DyTech-Dynamics-Extra-Stacksize-Minus-Button" then
		RSF.Stacksize("-")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Stacksize-Plus-Button" then
		RSF.Stacksize("+")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Logistics-Minus-Button" then
		RSF.Logistics("-")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Logistics-Plus-Button" then
		RSF.Logistics("+")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Combat-Minus-Button" then
		RSF.Combat_Robots("-")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Extra-Combat-Plus-Button" then
		RSF.Combat_Robots("+")
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchExtraGUI(playerIndex)
	elseif event.element.name == "DyTech-Dynamics-Lottery" then
		GUI.closeGUI("Lottery", playerIndex)
		MRS.showResearchLotteryGUI(playerIndex)
	elseif event.element.name == "DyTech-Lottery-Start-Button" then
		if tonumber(player.gui.top["mainLotteryFlow"]["mainLotteryFrame"]["Lottery"].text)~=nil then
			global.Lottery.Text = tonumber(player.gui.top["mainLotteryFlow"]["mainLotteryFrame"]["Lottery"].text)
			RSF.Lottery(playerIndex)
			GUI.closeGUI("Lottery", playerIndex)
			MRS.showResearchLotteryGUI(playerIndex)
		else
			player.print("Only numbers can be set!")
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
	
	DEBUG = function(name)
		global.ResearchSystem.science = global.ResearchSystem.science + 100000
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
		game.makefile("DyTech/DataDump/Dynamics-ResearchSystem.txt", serpent.block(global.ResearchSystem))
		game.makefile("DyTech/DataDump/Dynamics-Collectors.txt", serpent.block(global.Collectors))
		game.makefile("DyTech/DataDump/Dynamics-Technology.txt", serpent.block(global.Technology))
		game.makefile("DyTech/DataDump/Dynamics-AutoResearcher.txt", serpent.block(global.AutoResearcher))
		game.makefile("DyTech/DataDump/Dynamics-Auto_Researcher.txt", serpent.block(global.Auto_Researcher))
		game.makefile("DyTech/Log/Dynamics.txt", serpent.block(global.Log))
		game.makefile("DyTech/Config/Dynamics.txt", serpent.block(Config))
	end,
	
	IncreaseDynamicPower = function()	
		global.Dynamic_Power.Power = global.Dynamic_Power.Power + (1000*1000*10)
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
	end,
	
	TotalSciencePoints = function()
		global.ScienceTemp = 0
		for name,tech in pairs(global.Technology) do
			global.ScienceTemp = global.ScienceTemp + tech.ScienceCount
		end
		debug("total science points: "..global.ScienceTemp)
	end,
	
	TestLottery = function(number)
		if not global.Lottery then global.Lottery = {Text=1, Won=0, Lost=0} end
		global.Lottery.Lost = 0
		global.Lottery.Won = 0
		for i=1,number do
			global.Lottery.Text = math.random(1000)
			RSF.Lottery()
		end
		PlayerPrint(global.Lottery.Lost..":"..global.Lottery.Won)
		PlayerPrint((global.Lottery.Won/global.Lottery.Lost).."%")
	end,
	
	Startup = function()
		fs.StartupResearchSystem1()
	end
})
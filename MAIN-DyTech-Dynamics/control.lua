require "defines"
require "config"
require "database/research"
require "database/research-system"
require "scripts/automatic-research-system"
require "scripts/auto-researcher"
require "scripts/manual-research-system"
require "scripts/rs-functions"
require "scripts/functions"
require "scripts/test-functions"

--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
debug_GUI = false -- debugger for GUI
function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end

function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

game.oninit(function()
fs.Startup()
end)

game.onsave(function()

end)

game.onload(function()
	if not glob.Unlocked then glob.Unlocked = {} end
end)

game.onevent(defines.events.ontick, function(event)
	if Research_System and glob.RSAutomatic then	
		ARS.AutomaticRS(event)
	end
	if game.tick%300==1 and Research_System then
		RSF.CreateButton()
	elseif not Research_System then
		for _,player in pairs(game.players) do 
			if player.gui.top["ResearchButton"] then
				player.gui.top["ResearchButton"].destroy() 
			end
		end
	end
end)

game.onevent(defines.events.onresearchstarted, function(event)
if Research_System then	
	if not glob.science then glob.science=0 end
	debug("Research Started ("..tostring(event.research)..")")
	local ingredients = game.forces.player.technologies[event.research].researchunitcount
	glob.science=glob.science+(ingredients/10)
	debug("Research found in global table and increased: ("..tostring(ingredients/10)..") Total now: "..tostring(glob.science))
end
end)

game.onevent(defines.events.onresearchfinished, function(event)
if Auto_Researcher then
	AutoResearch.AutoMode()
end
if Research_System then	
	if not glob.science then glob.science=0 end
	debug("Research Finished ("..tostring(event.research)..")")
	local ingredients = game.forces.player.technologies[event.research].researchunitcount
	glob.science=glob.science+((ingredients/10)*9)
	debug("Research found in global table and increased: ("..tostring((ingredients/10)*9)..") Total now: "..tostring(glob.science))
end
end)

game.onevent(defines.events.onguiclick, function(event)
local playerIndex = event.playerindex
local player = game.players[playerIndex]
	if event.element.name:find(MRS.guiNames.MRSCloseButton) then
		MRS.closeGUI(4, playerIndex)
		RSF.ClearToUnlock()
	elseif event.element.name:find(MRS.guiNames.MRSBackButton1) then
		MRS.closeGUI(1, playerIndex)
	elseif event.element.name:find(MRS.guiNames.MRSBackButton2) then
		MRS.closeGUI(4, playerIndex)
		MRS.showMainGUI(playerIndex)
	elseif event.element.name:find(MRS.guiNames.MRSUnlockButton) then
		RSF.RSUnlock(glob.ToUnlock)
		MRS.closeGUI(4, playerIndex)
		MRS.showMainGUI(playerIndex)
	elseif RSDatabase.ItemUnlock[event.element.name] then
		glob.ToUnlock = event.element.name
		MRS.closeGUI(1, playerIndex)
		MRS.showUnlockGUI(playerIndex, glob.ToUnlock)
	elseif event.element.name == "ResearchButton" then
		if glob.RSManual then
			MRS.closeGUI(4, playerIndex)
			MRS.showMainGUI(playerIndex)
		else
			PlayerPrint({"rs-manual-disabled"})
		end
	elseif event.element.name == "DebugAddPoints" then
		glob.science = glob.science + 100000
		MRS.closeGUI(4, playerIndex)
		MRS.showMainGUI(playerIndex)
	elseif event.element.name:find(MRS.guiNames.Tier1) then
		MRS.showUnlockTableGUI(playerIndex, 1)
		MRS.closeGUI(2, playerIndex)
	elseif event.element.name:find(MRS.guiNames.Tier2) then
		MRS.showUnlockTableGUI(playerIndex, 2)
		MRS.closeGUI(2, playerIndex)
	elseif event.element.name:find(MRS.guiNames.Tier3) then
		MRS.showUnlockTableGUI(playerIndex, 3)
		MRS.closeGUI(2, playerIndex)
	elseif event.element.name:find(MRS.guiNames.Tier4) then
		MRS.showUnlockTableGUI(playerIndex, 4)
		MRS.closeGUI(2, playerIndex)
	end
end)

remote.addinterface("DyTech-Dynamics",
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
		glob.DatabaseNames = {} 
		glob.DatabaseNumbers = {}
		for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		local data = RSDatabase.ItemUnlock[RecipeName]
			table.insert(glob.DatabaseNames,RecipeName)
			table.insert(glob.DatabaseNumbers,data.Points)
		end
		game.makefile("DyTech-Research-Database-Base-Names.xls", serpent.block(glob.DatabaseNames))
		game.makefile("DyTech-Research-Database-Base-Numbers.xls", serpent.block(glob.DatabaseNumbers))
	end,
	
	DataDump = function(GLOBAL)
		game.makefile("DyTech-DataDump-"..GLOBAL..".txt", serpent.dump(glob.GLOBAL))
		game.makefile("DyTech-DataDump-SciencePoints-"..tostring(glob.science)..".txt", serpent.block(glob.science))
	end,
	
	ResearchDataDump = function()
	game.makefile("DyTech-DataDump-Technologies.txt", serpent.block(glob.Technology))
	end,
	
	SwitchRS = function()
		if glob.RSAutomatic==true then
			glob.RSAutomatic = false
			glob.RSManual = true
			PlayerPrint({"rs-manual"})
		else
			glob.RSAutomatic = true
			glob.RSManual = false
			PlayerPrint({"rs-automatic"})
		end
	end,
	
	PrintLevel = function(NAME)
		PlayerPrint(tostring(AutoResearch.getResearchLevel(NAME)))
	end,
	
	MRSTest = function(player)
		if glob.RSManual and Research_System then
			MRS.showUnlockTableGUI(player)
		else
			PlayerPrint({"rs-manual-disabled"})
		end
	end
})
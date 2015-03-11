require "defines"
require "config"
require "database/research"
require "database/research-system"
require "scripts/automatic-research-system"
require "scripts/manual-research-system"
require "scripts/rs-functions"
require "scripts/test-functions"

--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
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

function CreateButton()
	for _,player in pairs(game.players) do
		if Research_System then
			if not player.gui.top["ResearchButton"] then
				player.gui.top.add({type="button", name="ResearchButton", caption={"research-button"}})
			end
		end
	end
end

game.oninit(function()
glob.Unlocked = {}
glob.RSAutomatic = false
glob.RSManual = true
glob.ToUnlock = {}
glob.science=0
end)

game.onsave(function()

end)

game.onload(function()
	if not glob.Unlocked then glob.Unlocked = {} end
CreateButton()
end)

game.onevent(defines.events.ontick, function(event)
	if Research_System and glob.RSAutomatic then	
		ARS.AutomaticRS(event)
	end
	
end)

game.onevent(defines.events.onresearchstarted, function(event)
if Research_System then	
	if not glob.science then glob.science=0 end
	debug("Research Started ("..tostring(event.research)..")")
	if ResearchDatabase.research[event.research] then
		debug("Research found in database")
		for counter, ingredients in pairs(ResearchDatabase.research[event.research]) do 
			glob[counter]=glob[counter]+(ingredients/10)
			debug("Research added to science counter ("..tostring(ingredients/10)..") Total now: "..tostring(glob[counter]))
		end
	end
end
end)

game.onevent(defines.events.onresearchfinished, function(event)
if Research_System then
	if not glob.science then glob.science=0 end
	debug("Research Finished ("..tostring(event.research)..")")
	if ResearchDatabase.research[event.research] then
		debug("Research found in database")
		for counter, ingredients in pairs(ResearchDatabase.research[event.research]) do 
			glob[counter]=glob[counter]+((ingredients/10)*9)
			debug("Research added to science counter ("..tostring((ingredients/10)*9)..") Total now: "..tostring(glob[counter]))
		end
	end
end
end)

game.onevent(defines.events.onguiclick, function(event)
local playerIndex = event.playerindex
local player = game.players[playerIndex]
	if event.element.name:find(MRS.guiNames.MRSBackButton) then
		MRS.closeGUI(playerIndex)
		RSF.ClearToUnlock()
	elseif event.element.name:find(MRS.guiNames.MRSUnlockButton) then
		RSF.RSUnlock(glob.ToUnlock)
		MRS.closeGUI(playerIndex)
	elseif RSDatabase.ItemUnlock[event.element.name] then
		glob.ToUnlock = event.element.name
		MRS.closeGUI(playerIndex)
		MRS.showUnlockGUI(playerIndex, glob.ToUnlock)
	elseif event.element.name == "ResearchButton" then
		MRS.showUnlockTableGUI(playerIndex)
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
	
	RSAddScience = function(amount)
		glob.science = glob.science + amount
	end,
	
	TestButton = function()
		CreateButton()
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
	
	MRSTest = function(player)
		if glob.RSManual and Research_System then
			MRS.showUnlockTableGUI(player)
		else
			PlayerPrint({"rs-manual-disabled"})
		end
	end
})
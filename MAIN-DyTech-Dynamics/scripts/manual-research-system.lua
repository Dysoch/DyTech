module("MRS", package.seeall)
require "database/research-system"
require "scripts/rs-functions"
require "config"
require "defines"
 
guiNames = {
            mainFrameMRSUnlock="MRSUnlockGUIFrame",
            mainFlowMRSUnlock1="MRSUnlockGUIFlow1",
            mainFlowMRSUnlock2="MRSUnlockGUIFlow2",
            mainFlowMRSUnlock3="MRSUnlockGUIFlow3",
            mainFlowMRSUnlock4="MRSUnlockGUIFlow4",
            mainFlowMRSUnlock5="MRSUnlockGUIFlow5",
			MRSUnlockButton="MRSUnlockButton",
			MRSBackButton1="MRSBackButton1",
			MRSBackButton2="MRSBackButton2",
			MRSCloseButton="MRSCloseButton",
            mainFrame="mainFrameMRSTable",	
            mainFlow="mainFlowMRSTable",	
            mainUnlockFrame="mainUnlockFrame",	
            mainUnlockFlow="mainUnlockFlow",	
            RSTable="RSTable",		
            Tier1="Tier1",		
            Tier2="Tier2",		
            Tier3="Tier3",		
            Tier4="Tier4",		
            }
mainFrameMRSUnlock = nil -- placeholder
function showUnlockGUI(PlayerIndex, RecipeName)
local info = RSDatabase.ItemUnlock[RecipeName]
game.players[PlayerIndex].gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowMRSUnlock1})
game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].add({type="frame", direction="vertical", name=guiNames.mainFrameMRSUnlock, caption={"gui-unlock-screen"}})
mainFrameMRSUnlock = game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1][guiNames.mainFrameMRSUnlock]
-- Flow 2
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock2})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock2].add({type="label", name="", caption={"name", {info.Locale.."-name."..RecipeName}}})
-- Flow 3
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock3})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock3].add({type="label", name="", caption={"has-science-points", tostring(glob.science)}})
-- Flow 4
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock4})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock4].add({type="label", name="", caption={"science-points-cost", info.Points}})
-- Buttons
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock5})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock5].add({type="button", name=guiNames.MRSUnlockButton, caption={"unlock"}})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock5].add({type="button", name=guiNames.MRSBackButton1, caption={"close"}})
end

function showUnlockTableGUI(PlayerIndex, Tier)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainUnlockFlow})
player.gui.center[guiNames.mainUnlockFlow].add({type="frame", direction="vertical", name=guiNames.mainUnlockFrame, caption={"tier-unlock-screen-1", Tier, {"tier-unlock-screen-2"}}})
adder = player.gui.center[guiNames.mainUnlockFlow][guiNames.mainUnlockFrame]
adder.add({type="table", name=guiNames.RSTable, colspan=MaxRecipesPerRow})
	populateGUIUnlockTable(PlayerIndex, Tier)
adder.add({type="button", name=guiNames.MRSBackButton2, caption={"back"}})
end

function showMainGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlow})
player.gui.center[guiNames.mainFlow].add({type="frame", direction="vertical", name=guiNames.mainFrame, caption={"gui-unlock-screen-1"}})
adder = player.gui.center[guiNames.mainFlow][guiNames.mainFrame]
RSF.RecipeAvailableToUnlockTier1()
RSF.RecipeAvailableToUnlockTier2()
RSF.RecipeAvailableToUnlockTier3()
RSF.RecipeAvailableToUnlockTier4()
adder.add({type="button", name=guiNames.Tier1, caption={"Tier1", "(", tostring(glob.RecipeAvailableToUnlock.Tier1), ")"}})
adder.add({type="button", name=guiNames.Tier2, caption={"Tier2", "(", tostring(glob.RecipeAvailableToUnlock.Tier2), ")"}})
adder.add({type="button", name=guiNames.Tier3, caption={"Tier3", "(", tostring(glob.RecipeAvailableToUnlock.Tier3), ")"}})
adder.add({type="button", name=guiNames.Tier4, caption={"Tier4", "(", tostring(glob.RecipeAvailableToUnlock.Tier4), ")"}})
if debug_GUI then adder.add({type="button", name="DebugAddPoints", caption="100k points"}) end
adder.add({type="button", name=guiNames.MRSCloseButton, caption={"close"}})
end

function closeGUI(number, PlayerIndex)
	if number==1 then
		if game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].destroy()
		end
	elseif number==2 then
		if game.players[PlayerIndex].gui.center[guiNames.mainFlow] and game.players[PlayerIndex].gui.center[guiNames.mainFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlow].destroy()
			glob.MaxShown = 0
		end
	elseif number==3 then
		if game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow] and game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow].destroy()
			glob.MaxShown = 0
		end
	elseif number==4 then
		if game.players[PlayerIndex].gui.center[guiNames.mainFlow] and game.players[PlayerIndex].gui.center[guiNames.mainFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlow].destroy()
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].destroy()
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow] and game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainUnlockFlow].destroy()
			glob.MaxShown = 0
		end
	end
end

function populateGUIUnlockTable(PlayerIndex, TierRecipe)
local player = game.players[PlayerIndex]
local mainUnlockFrame = player.gui.center[guiNames.mainUnlockFlow][guiNames.mainUnlockFrame]
	glob.MaxShown = 0
	for _, name in pairs(mainUnlockFrame[guiNames.RSTable].childrennames) do
		mainUnlockFrame[guiNames.RSTable][name].destroy()
	end
	for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and glob.MaxShown <= (MaxRecipeShown-1) and data.Tier==TierRecipe then 
				mainUnlockFrame[guiNames.RSTable].add({type="button", name=RecipeName, caption={data.Locale.."-name."..RecipeName}})
				glob.MaxShown = glob.MaxShown + 1
			end
		else
			if glob.science > data.Points and glob.MaxShown <= (MaxRecipeShown-1) and data.Tier==TierRecipe then
				mainUnlockFrame[guiNames.RSTable].add({type="button", name=RecipeName, caption={data.Locale.."-name."..RecipeName}})
				glob.MaxShown = glob.MaxShown + 1
			end
		end
	end end
end
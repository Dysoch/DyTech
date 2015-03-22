module("MRS", package.seeall)
require "database/research-system"
require "scripts/rs-functions"
require "scripts/guinames"
require "config"
require "defines"

function showResearchMainGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainResearchFlow})
player.gui.center[guiNames.mainResearchFlow].add({type="frame", direction="vertical", name=guiNames.mainResearchFrame, caption={"gui-unlock-screen-1"}})
adder = player.gui.center[guiNames.mainResearchFlow][guiNames.mainResearchFrame]
RSF.RecipeAvailableToUnlockTier1()
RSF.RecipeAvailableToUnlockTier2()
RSF.RecipeAvailableToUnlockTier3()
RSF.RecipeAvailableToUnlockTier4()
adder.add({type="button", name=guiNames.Tier1Base, caption={"Tier1", "(", tostring(glob.RecipeAvailableToUnlock.Tier1), ")"}})
adder.add({type="button", name=guiNames.Tier2Base, caption={"Tier2", "(", tostring(glob.RecipeAvailableToUnlock.Tier2), ")"}})
adder.add({type="button", name=guiNames.Tier3Base, caption={"Tier3", "(", tostring(glob.RecipeAvailableToUnlock.Tier3), ")"}})
adder.add({type="button", name=guiNames.Tier4Base, caption={"Tier4", "(", tostring(glob.RecipeAvailableToUnlock.Tier4), ")"}})
if debug_GUI then adder.add({type="button", name="DebugAddPoints", caption="100k points"}) end
adder.add({type="button", name=guiNames.CloseButton, caption={"close"}})
end

function showUnlockTableGUI(PlayerIndex, Tier)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainResearchTableFlow})
player.gui.center[guiNames.mainResearchTableFlow].add({type="frame", direction="vertical", name=guiNames.mainResearchTableFrame, caption={"tier-unlock-screen-1", Tier, {"tier-unlock-screen-2"}}})
adder = player.gui.center[guiNames.mainResearchTableFlow][guiNames.mainResearchTableFrame]
adder.add({type="table", name=guiNames.RSTable, colspan=MaxRecipesPerRow})
	populateGUIUnlockTable(PlayerIndex, Tier)
adder.add({type="button", name=guiNames.MRSBackButton2, caption={"back"}})
end

function populateGUIUnlockTable(PlayerIndex, TierRecipe)
local player = game.players[PlayerIndex]
local mainResearchTableFrame = player.gui.center[guiNames.mainResearchTableFlow][guiNames.mainResearchTableFrame]
	glob.MaxShown = 0
	for _, name in pairs(mainResearchTableFrame[guiNames.RSTable].childrennames) do
		mainResearchTableFrame[guiNames.RSTable][name].destroy()
	end
	for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and glob.MaxShown <= (MaxRecipeShown-1) and data.Tier==TierRecipe then 
				mainResearchTableFrame[guiNames.RSTable].add({type="button", name=RecipeName, caption={data.Locale.."-name."..RecipeName}})
				glob.MaxShown = glob.MaxShown + 1
			end
		else
			if glob.science > data.Points and glob.MaxShown <= (MaxRecipeShown-1) and data.Tier==TierRecipe then
				mainResearchTableFrame[guiNames.RSTable].add({type="button", name=RecipeName, caption={data.Locale.."-name."..RecipeName}})
				glob.MaxShown = glob.MaxShown + 1
			end
		end
	end end
end

function showUnlockGUIBase(PlayerIndex, RecipeName)
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
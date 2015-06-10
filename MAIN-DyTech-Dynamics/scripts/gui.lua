module("GUI", package.seeall)
require "config"
require "scripts/guinames"
require "scripts/rs-functions"

function CreateButton()
	for _,player in pairs(game.players) do
		if Research_System then
			RSF.RecipeAvailableToUnlockAll()
			if not player.gui.top["DynamicsButton"] then
				player.gui.top.add({type="button", name="DynamicsButton", caption={"dynamic-button-rs", "(", tostring(glob.ResearchSystem.RecipeAvailableToUnlock.All), ")"}})
			else 
				player.gui.top["DynamicsButton"].destroy()
				player.gui.top.add({type="button", name="DynamicsButton", caption={"dynamic-button-rs", "(", tostring(glob.ResearchSystem.RecipeAvailableToUnlock.All), ")"}})
			end
		else
			if not player.gui.top["DynamicsButton"] then
				player.gui.top.add({type="button", name="DynamicsButton", caption={"dynamic-button"}})
			else 
				player.gui.top["DynamicsButton"].destroy()
				player.gui.top.add({type="button", name="DynamicsButton", caption={"dynamic-button"}})
			end
		end
	end
end

function showDynamicsMainGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainDynamicFlow})
player.gui.center[guiNames.mainDynamicFlow].add({type="frame", direction="vertical", name=guiNames.mainDynamicFrame, caption={"dynamic-gui"}})
adder = player.gui.center[guiNames.mainDynamicFlow][guiNames.mainDynamicFrame]
if Research_System then
	RSF.RecipeAvailableToUnlockAll()
	adder.add({type="button", name=guiNames.ResearchButton, caption={"research-button", "(", tostring(glob.ResearchSystem.RecipeAvailableToUnlock.All), ")"}})
end
if Auto_Researcher then 
	adder.add({type="button", name=guiNames.AutoResearcherButton, caption={"auto-researcher"}}) 
end
if Dynamic_Tools then 
	adder.add({type="button", name=guiNames.DynamicToolsButton, caption={"dynamic-tools"}}) 
end
if Collectors then 
	adder.add({type="button", name=guiNames.CollectorsButton, caption={"collectors"}}) 
end
adder.add({type="button", name=guiNames.CloseButton, caption={"close"}})
end

function closeGUI(statement, PlayerIndex)
	if statement=="all" then
		if game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow] and game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow].destroy()
			glob.MaxShown = 0
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow] and game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow].destroy()
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].destroy()
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow] and game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow].destroy()
		end
		if game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow] and game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow].destroy()
		end
	elseif statement=="DynamicsMain" then
		if game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow] and game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainDynamicFlow].destroy()
		end
	elseif statement=="ResearchMain" then
		if game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow] and game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainResearchFlow].destroy()
			glob.MaxShown = 0
		end
	elseif statement=="ResearchTable" then
		if game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow] and game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainResearchTableFlow].destroy()
			glob.MaxShown = 0
		end
	elseif statement=="ResearchUnlock" then
		if game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].destroy()
		end
	elseif statement=="Collectors" then
		if game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow] and game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow].valid then
			game.players[PlayerIndex].gui.center[guiNames.mainCollectorFlow].destroy()
		end
	end
end
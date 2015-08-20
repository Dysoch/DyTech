module("GUI", package.seeall)
require "config"
require "scripts/guinames"
require "scripts/rs-functions"

function showDynamicsMainGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name=guiNames.mainDynamicFlow})
player.gui.top[guiNames.mainDynamicFlow].add({type="frame", direction="vertical", name=guiNames.mainDynamicFrame, caption={"dynamic-gui"}})
adder = player.gui.top[guiNames.mainDynamicFlow][guiNames.mainDynamicFrame]
if Config.Research_System then
	RSF.RecipeAvailableToUnlockAll()
	adder.add({type="button", name=guiNames.ResearchButton, caption={"research-button", "(", tostring(global.ResearchSystem.RecipeAvailableToUnlock.All), ")"}})
	adder.add({type="button", name="DyTech-Dynamics-Lottery", caption={"gui-lottery"}})
end
if Config.Auto_Researcher then 
	adder.add({type="button", name="DyTech-Dynamics-AutoResearcher-Button", caption={"auto-researcher"}}) 
end
if Config.Dynamic_Power then 
	adder.add({type="button", name=guiNames.DynamicPowerButton, caption={"dynamic-power"}}) 
end
if Config.Dynamic_Tools then 
	adder.add({type="button", name=guiNames.DynamicToolsButton, caption={"dynamic-tools"}}) 
end
if Config.Collectors then 
	adder.add({type="button", name=guiNames.CollectorsButton, caption={"collectors"}}) 
end
adder.add({type="button", name=guiNames.CloseButton, caption={"close"}})
end

function closeGUI(statement, PlayerIndex)
	if statement=="all" then
		if game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow] and game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow].destroy()
			global.MaxShown = 0
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow] and game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow] and game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow] and game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow] and game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainAutoResearcherFlow] and game.players[PlayerIndex].gui.top[guiNames.mainAutoResearcherFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainAutoResearcherFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top[guiNames.mainResearchExtraFlow] and game.players[PlayerIndex].gui.top[guiNames.mainResearchExtraFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainResearchExtraFlow].destroy()
		end
		if game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"] and game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"].destroy()
		end
	elseif statement=="DynamicsMain" then
		if game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow] and game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainDynamicFlow].destroy()
		end
	elseif statement=="ResearchMain" then
		if game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow] and game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainResearchFlow].destroy()
			global.MaxShown = 0
		end
	elseif statement=="ResearchTable" then
		if game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow] and game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainResearchTableFlow].destroy()
			global.MaxShown = 0
		end
	elseif statement=="ResearchUnlock" then
		if game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainFlowMRSUnlock1].destroy()
		end
	elseif statement=="Collectors" then
		if game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow] and game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainCollectorFlow].destroy()
		end
	elseif statement=="Lottery" then
		if game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow] and game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow].valid then
			game.players[PlayerIndex].gui.top[guiNames.mainLotteryFlow].destroy()
		end
	end
end
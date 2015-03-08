module("MRS", package.seeall)
require "database/research-system"
require "scripts/rs-functions"

local BUTTON_COLSPAN = 6 
guiNames = {
            mainFrameMRSUnlock="MRSUnlockGUIFrame",
            mainFlowMRSUnlock1="MRSUnlockGUIFlow1",
            mainFlowMRSUnlock2="MRSUnlockGUIFlow2",
            mainFlowMRSUnlock3="MRSUnlockGUIFlow3",
            mainFlowMRSUnlock4="MRSUnlockGUIFlow4",
            mainFlowMRSUnlock5="MRSUnlockGUIFlow5",
			MRSUnlockButton="MRSUnlockButton",
			MRSBackButton="MRSBackButton",
            }
mainFrameMRSUnlock = nil -- placeholder
function showUnlockGUI(PlayerIndex, RecipeName)
local info = RSDatabase.ItemUnlock[RecipeName]
glob.ToUnlock = {RecipeName} -- To remember what to unlock!
game.players[PlayerIndex].gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowMRSUnlock1})
game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].add({type="frame", direction="vertical", name=guiNames.mainFrameMRSUnlock, caption={"gui-unlock-screen"}})
mainFrameMRSUnlock = game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1][guiNames.mainFrameMRSUnlock]
-- Flow 2
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock2, colspan=BUTTON_COLSPAN})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock2].add({type="label", name="", caption={"name"}})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock2].add({type="button", name="", caption={RecipeName}})
-- Flow 3
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock3})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock3].add({type="label", name="", caption={"has-science-points"}})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock3].add({type="button", name="", caption=tostring(glob.science)})
-- Flow 4
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock4})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock4].add({type="label", name="", caption={"science-points-cost"}})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock4].add({type="button", name="", caption=info.Points})
-- Buttons
mainFrameMRSUnlock.add({type="flow", direction="horizontal", name=guiNames.mainFlowMRSUnlock5})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock5].add({type="button", name=guiNames.MRSUnlockButton, caption={"unlock"}})
mainFrameMRSUnlock[guiNames.mainFlowMRSUnlock5].add({type="button", name=guiNames.MRSBackButton, caption={"back"}})
end

function closeUnlockGUI(PlayerIndex)
	if game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1] and game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].valid then
		game.players[PlayerIndex].gui.center[guiNames.mainFlowMRSUnlock1].destroy()
	end
end
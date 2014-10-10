module("CoreGUI", package.seeall)
require("util")

local ITEM_COLSPAN = 6 -- copied from testing mode mod
guiNames = {mainFlowCore="CoreGUIFlow",
            mainFrameCore="CoreGUIFrame",
            buttonFlowCore="CoreGUIPartFlow",
            label="CoreGUILabel",
            exitButton="CoreGUIExit!",
            }
mainFrameCore = nil -- placeholder
oldLabel = "No parts currently selected" -- placeholder
function showCoreGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCore})
  game.player.gui.center[guiNames.mainFlowCore].add({type="frame", direction="vertical", name=guiNames.mainFrameCore, caption="DyTech-Core Informations!"})
  mainFrameCore = game.player.gui.center[guiNames.mainFlowCore][guiNames.mainFrameCore]
  mainFrameCore.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCore})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.exitButton, caption="Close!"})
  mainFrameCore.add({type="label", name=guiNames.label, caption=oldLabel}) 
end

function toggleCoreGUI()
  if game.player.gui.center[guiNames.mainFlowCore] then
    closeCoreGUI()
  else
    showCoreGUI()
  end
end

function closeCoreGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCore] and game.player.gui.center[CoreGUI.guiNames.mainFlowCore].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCore].destroy()
  end
end
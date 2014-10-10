module("CoreGUI", package.seeall)
require "defines"
require "scripts/oninit"

local ITEM_COLSPAN = 6 -- copied from testing mode mod
guiNames = {mainFlowCore="CoreGUIFlow",
            mainFrameCore="CoreGUIFrame",
            buttonFlowCore="CoreGUIPartFlow",
            label="CoreGUILabel",
            label1="CoreGUILabel1",
            label2="CoreGUILabel2",
            label3="CoreGUILabel3",
            label4="CoreGUILabel4",
            label5="CoreGUILabel5",
            label6="CoreGUILabel6",
            label7="CoreGUILabel7",
            label8="CoreGUILabel8",
            label9="CoreGUILabel9",
            label10="CoreGUILabel10",
            label11="CoreGUILabel11",
            label12="CoreGUILabel12",
            ExportButton="CoreGUIExport!",
            ExitButton="CoreGUIExit!",
            }
mainFrameCore = nil -- placeholder
function showCoreGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCore})
  game.player.gui.center[guiNames.mainFlowCore].add({type="frame", direction="vertical", name=guiNames.mainFrameCore, caption="DyTech-Core Informations!"})
  mainFrameCore = game.player.gui.center[guiNames.mainFlowCore][guiNames.mainFrameCore]
  mainFrameCore.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCore})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExportButton, caption="Export!"})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameCore.add({type="label", name=guiNames.label, caption=Init.Timer}) 
  mainFrameCore.add({type="label", name=guiNames.label1, caption=Init.Counter1}) 
  mainFrameCore.add({type="label", name=guiNames.label2, caption=Init.Counter2}) 
  mainFrameCore.add({type="label", name=guiNames.label3, caption=Init.Counter3}) 
  mainFrameCore.add({type="label", name=guiNames.label4, caption=Init.Counter4}) 
  mainFrameCore.add({type="label", name=guiNames.label5, caption=Init.Counter5}) 
  mainFrameCore.add({type="label", name=guiNames.label6, caption=Init.Counter6}) 
  mainFrameCore.add({type="label", name=guiNames.label7, caption=Init.Counter7}) 
  mainFrameCore.add({type="label", name=guiNames.label8, caption=Init.Counter8}) 
  mainFrameCore.add({type="label", name=guiNames.label9, caption=Init.Counter9}) 
  mainFrameCore.add({type="label", name=guiNames.label10, caption=Init.Counter10}) 
  mainFrameCore.add({type="label", name=guiNames.label11, caption=Init.Counter11}) 
  mainFrameCore.add({type="label", name=guiNames.label12, caption=Init.Counter12})
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
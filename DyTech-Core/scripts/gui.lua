module("CoreGUI", package.seeall)
require "defines"
require "scripts/oninit"

local BUTTON_COLSPAN = 3 -- copied from testing mode mod
guiNames = {mainFlowCore="CoreGUIFlow",
            mainFrameCore="CoreGUIFrame",
            buttonFlowCore="CoreGUIPartFlow",
			mainFlowCounter="CounterGUIFlow",
            mainFrameCounter="CounterGUIFrame",
            buttonFlowCounter="CounterGUIPartFlow",
            ExportButton="CoreGUIExport!",
            ExitButton="CoreGUIExit!",
            BackButton="CoreGUIBack!",
            CounterButton="CoreGUICounter!",
            DynamicButton="CoreGUIDynamic!",
            labalCore="CoreGUILabelCore",
            labalDynamic="CoreGUILabelDynamic",
            label0="CoreGUILabel0",
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
            }
mainFrameCore = nil -- placeholder
MainScreen = "Click the button you want to use!"
Core = "These are the Buttons for DyTech-Core!"
Dynamic = "These are the Buttons for DyTech-Dynamic!"
function showCoreGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCore, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowCore].add({type="frame", direction="vertical", name=guiNames.mainFrameCore, caption="DyTech Control Center!"})
  mainFrameCore = game.player.gui.center[guiNames.mainFlowCore][guiNames.mainFrameCore]
  mainFrameCore.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCore})
  mainFrameCore.add({type="label", name=guiNames.labalCore, caption=Core})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExportButton, caption="Export!"})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.CounterButton, caption="Counters!"})
  mainFrameCore.add({type="label", name=guiNames.labalDynamic, caption=Dynamic})
  if glob.dytech.dynamic then mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.DynamicButton, caption="Toggle Dynamic System!"}) end
  mainFrameCore.add({type="label", name=guiNames.label0, caption=MainScreen}) 
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameCore.add({type="label", name=guiNames.label, caption=Init.Timer}) 
end

function showCounterGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCounter})
  game.player.gui.center[guiNames.mainFlowCounter].add({type="frame", direction="vertical", name=guiNames.mainFrameCounter, caption="DyTech-Core Counters!"})
  mainFrameCounter = game.player.gui.center[guiNames.mainFlowCounter][guiNames.mainFrameCounter]
  mainFrameCounter.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCounter})
  mainFrameCounter[guiNames.buttonFlowCounter].add({type="button", name=guiNames.ExportButton, caption="Export!"})
  mainFrameCounter[guiNames.buttonFlowCounter].add({type="button", name=guiNames.BackButton, caption="Back"})
  mainFrameCounter.add({type="label", name=guiNames.label1, caption=Init.Counter1}) 
  mainFrameCounter.add({type="label", name=guiNames.label2, caption=Init.Counter2}) 
  mainFrameCounter.add({type="label", name=guiNames.label3, caption=Init.Counter3}) 
  mainFrameCounter.add({type="label", name=guiNames.label4, caption=Init.Counter4}) 
  mainFrameCounter.add({type="label", name=guiNames.label5, caption=Init.Counter5}) 
  mainFrameCounter.add({type="label", name=guiNames.label6, caption=Init.Counter6}) 
  mainFrameCounter.add({type="label", name=guiNames.label7, caption=Init.Counter7}) 
  mainFrameCounter.add({type="label", name=guiNames.label8, caption=Init.Counter8}) 
  mainFrameCounter.add({type="label", name=guiNames.label9, caption=Init.Counter9}) 
  mainFrameCounter.add({type="label", name=guiNames.label10, caption=Init.Counter10}) 
  mainFrameCounter.add({type="label", name=guiNames.label11, caption=Init.Counter11}) 
  mainFrameCounter.add({type="label", name=guiNames.label12, caption=Init.Counter12})
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

function closeCounterGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCounter] and game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].destroy()
  end
end
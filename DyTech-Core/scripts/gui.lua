module("CoreGUI", package.seeall)
require "defines"
require "scripts/oninit"

local BUTTON_COLSPAN = 3 -- copied from testing mode mod
guiNames = {mainFlowMaster="MasterGUIFlow",
            mainFrameMaster="MasterGUIFrame",
            buttonFlowMaster="MasterGUIPartFlow",
			mainFlowCore="CoreGUIFlow",
            mainFrameCore="CoreGUIFrame",
            buttonFlowCore="CoreGUIPartFlow",
			mainFlowDynamic="DynamicGUIFlow",
            mainFrameDynamic="DynamicGUIFrame",
            buttonFlowDynamic="DynamicGUIPartFlow",
			mainFlowTools="ToolsGUIFlow",
            mainFrameTools="ToolsGUIFrame",
            buttonFlowTools="ToolsGUIPartFlow",
			mainFlowMetallurgy="MetallurgyGUIFlow",
            mainFrameMetallurgy="MetallurgyGUIFrame",
            buttonFlowMetallurgy="MetallurgyGUIPartFlow",
			mainFlowCounter="CounterGUIFlow",
            mainFrameCounter="CounterGUIFrame",
            buttonFlowCounter="CounterGUIPartFlow",
            ExportButton="CoreGUIExport!",
            ExitButton="MasterGUIExit!",
            BackButton="CoreGUIBack!",
            CounterButton="CoreGUICounter!",
            CoreButton="CoreGUICore!",
            DynamicButton="CoreGUIDynamic!",
            ToolsButton="CoreGUITools!",
            MetallurgyButton="CoreGUIMetallurgy!",
            DynamicSystemButton="DynamicGUISystem!",
            DynamicSystemHardButton="DynamicGUISystemHard!",
            ToolsCraftingButton="ToolsGUICrafting!",
            ToolsItemButton="ToolsGUIItemLost!",
            MetallurgyFluidsButton="MetallurgyGUIFluids!",
            MetallurgyOresButton="MetallurgyGUIOres!",
            labelCore="CoreGUILabelCore",
            labelDynamic="CoreGUILabelDynamic",
            labelTools="CoreGUILabelDynamic",
            labelMetallurgy="CoreGUILabelMetallurgy",
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
            label13="ToolsGUILabel1",
            label14="MetallurgyGUILabel1",
            }
mainFrameMaster = nil -- placeholder
mainFrameCore = nil -- placeholder
mainFrameDynamic = nil -- placeholder
mainFrameTools = nil -- placeholder
mainFrameMetallurgy = nil -- placeholder
mainFrameCounter = nil -- placeholder
MainScreen = "Click the Module you want to use Commands for!"
Core = "These are the Options for DyTech-Core!"
Dynamic = "These are the Options for DyTech-Dynamic!"
Tools = "These are the Options for DyTech-Tools!"
Metallurgy = "These are the Options for DyTech-Metallurgy!"
Tools1 = "Lost the item for the Crafting Bench? Click the Give Button to get it again!"
Metallurgy1 = "Regeneration of Fluids or Ores Takes some time, prepare for some Lag!"
function showMasterGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowMaster, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowMaster].add({type="frame", direction="vertical", name=guiNames.mainFrameMaster, caption="DyTech Control Center!"})
  mainFrameMaster = game.player.gui.center[guiNames.mainFlowMaster][guiNames.mainFrameMaster]
  mainFrameMaster.add({type="flow", direction="horizontal", name=guiNames.mainFlowMaster})
  mainFrameMaster[guiNames.mainFlowMaster].add({type="button", name=guiNames.CoreButton, caption="DyTech-Core!"})
  if glob.dytech.dynamic then mainFrameMaster[guiNames.mainFlowMaster].add({type="button", name=guiNames.DynamicButton, caption="DyTech-Dynamic!"}) end
  if glob.dytech.tools then mainFrameMaster[guiNames.mainFlowMaster].add({type="button", name=guiNames.ToolsButton, caption="DyTech-Tools!"}) end
  if glob.dytech.metallurgy then mainFrameMaster[guiNames.mainFlowMaster].add({type="button", name=guiNames.MetallurgyButton, caption="DyTech-Metallurgy!"}) end
  mainFrameMaster[guiNames.mainFlowMaster].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameMaster.add({type="label", name=guiNames.label0, caption=MainScreen})
  mainFrameMaster.add({type="label", name=guiNames.label, caption="You have played".." "..tostring(glob.timer.hours).." ".."Hours,".." "..tostring(glob.timer.minutes).." ".."Minutes and".." "..tostring(glob.timer.seconds).." ".."Seconds!"}) 
end

function showCoreGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCore, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowCore].add({type="frame", direction="vertical", name=guiNames.mainFrameCore, caption="DyTech-Core Control Center!"})
  mainFrameCore = game.player.gui.center[guiNames.mainFlowCore][guiNames.mainFrameCore]
  mainFrameCore.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCore})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExportButton, caption="Export!"})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.CounterButton, caption="Counters!"})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.BackButton, caption="Back!"})
  mainFrameCore[guiNames.buttonFlowCore].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameCore.add({type="label", name=guiNames.labelCore, caption=Core})
end

function showDynamicGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowDynamic, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowDynamic].add({type="frame", direction="vertical", name=guiNames.mainFrameDynamic, caption="DyTech-Dynamic Control Center!"})
  mainFrameDynamic = game.player.gui.center[guiNames.mainFlowDynamic][guiNames.mainFrameDynamic]
  mainFrameDynamic.add({type="flow", direction="horizontal", name=guiNames.buttonFlowDynamic})
  mainFrameDynamic[guiNames.buttonFlowDynamic].add({type="button", name=guiNames.DynamicSystemButton, caption="Toggle Dynamic System!"})
  mainFrameDynamic[guiNames.buttonFlowDynamic].add({type="button", name=guiNames.DynamicSystemHardButton, caption="Toggle Dynamic Hard Mode!"})
  mainFrameDynamic[guiNames.buttonFlowDynamic].add({type="button", name=guiNames.BackButton, caption="Back!"})
  mainFrameDynamic[guiNames.buttonFlowDynamic].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameDynamic.add({type="label", name=guiNames.labelDynamic, caption=Dynamic})
end

function showToolsGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowTools, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowTools].add({type="frame", direction="vertical", name=guiNames.mainFrameTools, caption="DyTech-Tools Control Center!"})
  mainFrameTools = game.player.gui.center[guiNames.mainFlowTools][guiNames.mainFrameTools]
  mainFrameTools.add({type="flow", direction="horizontal", name=guiNames.buttonFlowTools})
  mainFrameTools[guiNames.buttonFlowTools].add({type="button", name=guiNames.ToolsCraftingButton, caption="Tools Crafting!"})
  mainFrameTools[guiNames.buttonFlowTools].add({type="button", name=guiNames.ToolsItemButton, caption="Give Crafting Bench Item!"})
  mainFrameTools[guiNames.buttonFlowTools].add({type="button", name=guiNames.BackButton, caption="Back!"})
  mainFrameTools[guiNames.buttonFlowTools].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameTools.add({type="label", name=guiNames.labelTools, caption=Tools})
  mainFrameTools.add({type="label", name=guiNames.label13, caption=Tools1})
end

function showMetallurgyGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowMetallurgy, colspan=BUTTON_COLSPAN})
  game.player.gui.center[guiNames.mainFlowMetallurgy].add({type="frame", direction="vertical", name=guiNames.mainFrameMetallurgy, caption="DyTech-Metallurgy Control Center!"})
  mainFrameMetallurgy = game.player.gui.center[guiNames.mainFlowMetallurgy][guiNames.mainFrameMetallurgy]
  mainFrameMetallurgy.add({type="flow", direction="horizontal", name=guiNames.buttonFlowMetallurgy})
  mainFrameMetallurgy[guiNames.buttonFlowMetallurgy].add({type="button", name=guiNames.MetallurgyFluidsButton, caption="Regenerate Fluids!"})
  mainFrameMetallurgy[guiNames.buttonFlowMetallurgy].add({type="button", name=guiNames.MetallurgyOresButton, caption="Regenerate Ores!"})
  mainFrameMetallurgy[guiNames.buttonFlowMetallurgy].add({type="button", name=guiNames.BackButton, caption="Back!"})
  mainFrameMetallurgy[guiNames.buttonFlowMetallurgy].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameMetallurgy.add({type="label", name=guiNames.labelMetallurgy, caption=Metallurgy})
  mainFrameMetallurgy.add({type="label", name=guiNames.label14, caption=Metallurgy1})
end

function showCounterGUI()
  game.player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainFlowCounter})
  game.player.gui.center[guiNames.mainFlowCounter].add({type="frame", direction="vertical", name=guiNames.mainFrameCounter, caption="DyTech-Core Counters!"})
  mainFrameCounter = game.player.gui.center[guiNames.mainFlowCounter][guiNames.mainFrameCounter]
  mainFrameCounter.add({type="flow", direction="horizontal", name=guiNames.buttonFlowCounter})
  mainFrameCounter[guiNames.buttonFlowCounter].add({type="button", name=guiNames.ExportButton, caption="Export!"})
  mainFrameCounter[guiNames.buttonFlowCounter].add({type="button", name=guiNames.BackButton, caption="Back"})
  mainFrameCounter[guiNames.buttonFlowCounter].add({type="button", name=guiNames.ExitButton, caption="Close!"})
  mainFrameCounter.add({type="label", name=guiNames.label1, caption="Alien Counter is at:".." "..tostring(glob.counter.alien).."          ".."Ammo Counter is at:".." "..tostring(glob.counter.ammo)}) 
  mainFrameCounter.add({type="label", name=guiNames.label2, caption="Armor Counter is at:".." "..tostring(glob.counter.armor).."          ".."Belt Counter is at:".." "..tostring(glob.counter.belt)}) 
  mainFrameCounter.add({type="label", name=guiNames.label3, caption="Capsule Counter is at:".." "..tostring(glob.counter.capsule).."          ".."Chest Counter is at:".." "..tostring(glob.counter.chest)}) 
  mainFrameCounter.add({type="label", name=guiNames.label4, caption="Energy Counter is at:".." "..tostring(glob.counter.energy).."          ".."Gear Counter is at:".." "..tostring(glob.counter.gear)}) 
  mainFrameCounter.add({type="label", name=guiNames.label5, caption="Gems Counter is at:".." "..tostring(glob.counter.gems).."          ".."Gun Counter is at:".." "..tostring(glob.counter.gun)}) 
  mainFrameCounter.add({type="label", name=guiNames.label6, caption="Inserter Counter is at:".." "..tostring(glob.counter.inserter).."          ".."Machine Counter is at:".." "..tostring(glob.counter.machine)}) 
  mainFrameCounter.add({type="label", name=guiNames.label7, caption="Mining Counter is at:".." "..tostring(glob.counter.mining).."          ".."Modules Counter is at:".." "..tostring(glob.counter.modules)}) 
  mainFrameCounter.add({type="label", name=guiNames.label8, caption="Pipes Counter is at:".." "..tostring(glob.counter.pipes).."          ".."Plates Counter is at:".." "..tostring(glob.counter.plates)}) 
  mainFrameCounter.add({type="label", name=guiNames.label9, caption="Resource Counter is at:".." "..tostring(glob.counter.resource).."          ".."Robot Counter is at:".." "..tostring(glob.counter.robot)}) 
  mainFrameCounter.add({type="label", name=guiNames.label10, caption="Science Counter is at:".." "..tostring(glob.counter.science).."          ".."Tech Counter is at:".." "..tostring(glob.counter.tech)}) 
  mainFrameCounter.add({type="label", name=guiNames.label11, caption="Transport Counter is at:".." "..tostring(glob.counter.transport).."          ".."Turrets Counter is at:".." "..tostring(glob.counter.turret)}) 
  mainFrameCounter.add({type="label", name=guiNames.label12, caption="Walls Counter is at:".." "..tostring(glob.counter.walls).."          ".."DyTech Global Counter is at:".." "..tostring(glob.counter.dytech)})
end

function closeAllGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowMaster] and game.player.gui.center[CoreGUI.guiNames.mainFlowMaster].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowMaster].destroy()
  end
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCore] and game.player.gui.center[CoreGUI.guiNames.mainFlowCore].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCore].destroy()
  end
  if game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic] and game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic].destroy()
  end
  if game.player.gui.center[CoreGUI.guiNames.mainFlowTools] and game.player.gui.center[CoreGUI.guiNames.mainFlowTools].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowTools].destroy()
  end
  if game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy] and game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy].destroy()
  end
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCounter] and game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].destroy()
  end
end

function closeMasterGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowMaster] and game.player.gui.center[CoreGUI.guiNames.mainFlowMaster].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowMaster].destroy()
  end
end

function closeCoreGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCore] and game.player.gui.center[CoreGUI.guiNames.mainFlowCore].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCore].destroy()
  end
end

function closeDynamicGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic] and game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowDynamic].destroy()
  end
end

function closeToolsGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowTools] and game.player.gui.center[CoreGUI.guiNames.mainFlowTools].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowTools].destroy()
  end
end

function closeMetallurgyGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy] and game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowMetallurgy].destroy()
  end
end

function closeCounterGUI()
  if game.player.gui.center[CoreGUI.guiNames.mainFlowCounter] and game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].valid then
    game.player.gui.center[CoreGUI.guiNames.mainFlowCounter].destroy()
  end
end
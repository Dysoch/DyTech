module("Core_GUI", package.seeall)
require "defines"

function showCoreGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="horizontal", name="mainDyTechCoreFlow"})
player.gui.top["mainDyTechCoreFlow"].add({type="frame", direction="vertical", name="mainDyTechCoreFrame", caption={"dytech-core"}})
player.gui.top["mainDyTechCoreFlow"].add({type="frame", direction="vertical", name="mainDyTechCoreFrame1", caption={"dytech-core-stats"}})
adder = player.gui.top["mainDyTechCoreFlow"]["mainDyTechCoreFrame"]
adder1 = player.gui.top["mainDyTechCoreFlow"]["mainDyTechCoreFrame1"]
adder.add({type="button", name="DyTech-Core-Back-Button", caption={"back"}})
	for name, table in pairs(global.LoggerCount) do
		adder1.add({type="label", name="", caption={name, table}})
	end
end

function showDyTechDebugGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name="mainDyTechDebugFlow"})
player.gui.top["mainDyTechDebugFlow"].add({type="frame", direction="vertical", name="mainDyTechDebugFrame", caption={"dytech-debug-gui"}})
adder = player.gui.top["mainDyTechDebugFlow"]["mainDyTechDebugFrame"]

adder.add({type="button", name="DyTech-Debug-Dump-Button", caption="Data Dump"})
adder.add({type="button", name="DyTech-Debug-TestResource-Button", caption="Test Resources (500x500)"})
adder.add({type="button", name="DyTech-Debug-TestItems-Button", caption="Give debug items"})
adder.add({type="button", name="DyTech-Debug-Reset-Button", caption="Reset all"})
adder.add({type="button", name="DyTech-Debug-Technology-Button", caption="Research All"})
adder.add({type="button", name="DyTech-Debug-Evolution-0-Button", caption="Set Evolution to 0"})
adder.add({type="button", name="DyTech-Debug-Evolution-1-Button", caption="Set Evolution to 1"})
adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
end
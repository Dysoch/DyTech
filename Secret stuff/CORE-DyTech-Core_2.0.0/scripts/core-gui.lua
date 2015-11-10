module("Core_GUI", package.seeall)
require "defines"
require "scripts/functions"

function showCoreGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="horizontal", name="mainDyTechCoreFlow"})
player.gui.top["mainDyTechCoreFlow"].add({type="frame", direction="vertical", name="mainDyTechCoreFrame", caption={"dytech-core"}})
player.gui.top["mainDyTechCoreFlow"].add({type="frame", direction="vertical", name="mainDyTechCoreFrame1", caption={"dytech-core-stats"}})
adder = player.gui.top["mainDyTechCoreFlow"]["mainDyTechCoreFrame"]
adder1 = player.gui.top["mainDyTechCoreFlow"]["mainDyTechCoreFrame1"]
adder.add({type="button", name="DyTech-Core-Back-Button", caption={"back"}})
fs.Pollution_Check()
adder1.add({type="label", name="", caption={"pollution", math.floor(global.Pollution)}})
	for name, table in pairs(global.LoggerCount) do
		adder1.add({type="label", name="", caption={name, table}})
	end
end
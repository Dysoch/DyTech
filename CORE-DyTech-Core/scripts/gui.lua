module("CoreGUI", package.seeall)
require "defines"

function CreateButton()
	for _,player in pairs(game.players) do
		if not player.gui.top["DyTech-Button"] and not player.gui.top["mainDyTechFlow"] then
			player.gui.top.add({type="button", name="DyTech-Button", caption={"dytech-button"}})
		end
	end
end

function showDyTechGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name="mainDyTechFlow"})
player.gui.top["mainDyTechFlow"].add({type="frame", direction="vertical", name="mainDyTechFrame", caption={"dytech-gui"}})
adder = player.gui.top["mainDyTechFlow"]["mainDyTechFrame"]

adder.add({type="button", name="DyTech-Core-Button", caption={"dytech-core"}})
if remote.interfaces["DyTech-Dynamics"] then 
	adder.add({type="button", name="DyTech-Dynamics-Button", caption={"dytech-dynamics"}}) 
end
if remote.interfaces["DyTech-Machine"] then 
	adder.add({type="button", name="DyTech-Machine-Button", caption={"dytech-machine"}}) 
end
if remote.interfaces["DyTech-Power"] then 
	adder.add({type="button", name="DyTech-Power-Button", caption={"dytech-power"}}) 
end
if remote.interfaces["DyTech-Science"] then 
	adder.add({type="button", name="DyTech-Science-Button", caption={"dytech-science"}}) 
end
if remote.interfaces["DyTech-War"] then 
	adder.add({type="button", name="DyTech-War-Button", caption={"dytech-war"}}) 
end
if remote.interfaces["DyTech-World"] then 
	adder.add({type="button", name="DyTech-World-Button", caption={"dytech-world"}}) 
end
if debug_for_GUI then 
	adder.add({type="button", name="DyTech-Debug-Button", caption={"dytech-debug"}}) 
end
adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
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

function closeGUI(statement, PlayerIndex)
	if statement=="Debug" then
		if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
		end
	elseif statement=="DyTech" then
		if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
		end
	elseif statement=="All" then
		if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
		end
		if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
		end
	end
end
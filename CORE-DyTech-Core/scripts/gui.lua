module("CoreGUI", package.seeall)
require "defines"

function CreateButton()
	for _,player in pairs(game.players) do
		if not player.gui.top["DyTech-Button"] then
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
if remote.interfaces["DyTech-War"] then 
	adder.add({type="button", name="DyTech-War-Button", caption={"dytech-war"}}) 
end
adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
end

function closeGUI(statement, PlayerIndex)
	if statement=="DyTech" then
		if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
		end
	end
end
module("GUI", package.seeall)
require "defines"

function showDyTechWorldGUI(PlayerIndex)
global.GUI1 = true
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name="mainDyTechWorldFlow"})
player.gui.top["mainDyTechWorldFlow"].add({type="frame", direction="vertical", name="mainDyTechWorldFrame", caption={"dytech-world-gui"}})
adder = player.gui.top["mainDyTechWorldFlow"]["mainDyTechWorldFrame"]
if not global.XP.GUI then
	adder.add({type= "checkbox", caption={"xp-checkbox"}, name="XP-checkbox", state = false})
else 
	adder.add({type= "checkbox", caption={"xp-checkbox"}, name="XP-checkbox", state = true})
end
adder.add({type="label", name="Stamina-Label", caption={"stamina", global.Missions.Stamina}})
adder.add({type="button", name="DyTech-World-Close-Button", caption={"close"}})
end

function showDyTechWorldXPGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.left.add({type="flow", direction="horizontal", name="mainDyTechWorldXPFlow"})
player.gui.left["mainDyTechWorldXPFlow"].add({type="frame", direction="vertical", name="mainDyTechWorldXPFrame", caption="XP System"})
adder = player.gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]

adder.add({type="label", name="", caption={"dytech-world-gui-xp-crafting", global.XP.Crafting.Level}})
adder.add({type="progressbar", name="Crafting-XP", size=global.XP.Crafting.Needed})
adder.add({type="label", name="", caption={"crafting-bonus", string.sub(global.XP.Crafting.Bonus,1,4)}})
adder.add({type="label", name="", caption={"crafting-total", global.XP.Crafting.Total}})

adder.add({type="label", name="", caption={"dytech-world-gui-xp-mining", global.XP.Mining.Level}})
adder.add({type="progressbar", name="Mining-XP", size=global.XP.Mining.Needed})
adder.add({type="label", name="", caption={"mining-bonus", string.sub(global.XP.Mining.Bonus,1,4)}})
adder.add({type="label", name="", caption={"mining-total", global.XP.Mining.Total}})

adder.add({type="label", name="", caption={"dytech-world-gui-xp-fighting", global.XP.Fighting.Level}})
adder.add({type="progressbar", name="Fighting-XP", size=global.XP.Fighting.Needed})
adder.add({type="label", name="", caption={"fighting-bonus", string.sub(global.XP.Fighting.Bonus,1,4)}})
adder.add({type="label", name="", caption={"fighting-evolution", string.sub(game.evolution_factor,1,4)}})
if not global.XP.Fighting.Extinction then global.XP.Fighting.Extinction = 0 end
if global.XP.Fighting.Extinction > 0 then
	adder.add({type="button", name="DyTech-Extinction-Button", caption={"fighting-extinction", global.XP.Fighting.Extinction}})
end
if not global.XP.Research then global.XP.Research = 0 end
if global.XP.Research > 0.99 then
	adder.add({type="label", name="", caption={"dytech-world-gui-xp-research"}})
	adder.add({type="button", name="DyTech-Research-Finish-Button", caption={"research-finish", string.sub(global.XP.Research,1,1)}})
end
end

function closeGUI(statement, PlayerIndex)
	if statement=="XP" then
		if game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"] and game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"].valid then
			game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"].destroy()
		end
	elseif statement=="Main" then
		if game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"] and game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"].destroy()
			global.GUI1 = false
		end
	elseif statement=="All" then
		if game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"] and game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechWorldFlow"].destroy()
		end
		if game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"] and game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"].valid then
			game.players[PlayerIndex].gui.left["mainDyTechWorldXPFlow"].destroy()
			global.GUI1 = false
		end
	end
end
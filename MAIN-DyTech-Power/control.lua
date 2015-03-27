require "defines"

--[[TODO:
	Proper localisation
	]]--

--Don't mind me:
--/c game.player.insert{name="nuclear-reactor",count=1}
	
--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!

function debug(str)
	if debug_master then
		for _,player in pairs(game.players) do
			player.print(str)
		end
	end
end

--[[Insert Fancy Code Here:]]--


game.onevent(defines.events.onputitem, function(event)

--Saving the coordinates of the placed entity
	local x1 = event.onbuiltentity.position.x-2 --Left Top
	local y1 = event.onbuiltentity.position.y+2
	
	local x2 = event.onbuiltentity.position.x+2 --Right Bottom
	local y2 = event.onbuiltentity.position.y-2
	
	local cx1 = event.onbuiltentity.position.x-2
	local cy1 = event.onbuiltentity.position.y
end)

--[[Reactor Code]]--

game.onevent(defines.events.onbuiltentity, function(event)


	
	if event.createdentity.name == "nuclear-reactor" then
		event.createdentity.operable = false
		if (game.createentity{name = "nuclear-reactor-container", position = {cx1, cy1}, force=game.forces.player}) then
			game.createentity{name = "nuclear-reactor-container", position = {cx1, cy1}, force=game.forces.player}
		else
			for i,player in pairs(game.players) do
				player.print("The nuclear reactor couldn't be placed. Please make sure the complete 6x6 area is clear, and you place the reactor in the middle.")
			end
			event.createdentity.destroy()
			game.players[i].insert({name = "nuclear-reactor", count = 1})
		end
	end
end)
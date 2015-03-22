
--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!

function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end

--[[Insert Fancy Code Here:]]--


--[[Reactor Code]]--

--Saving the coordinates of the placed entity
game.onevent(defines.events.onputitem, function(event)
	local x1 = event.onputitem.position.x-2
	local y1 = event.onputitem.position.y-2
	local x2 = event.onputitem.position.x+2
	local y2 = event.onputitem.position.y+2
end)


game.onevent(defines.events.onbuiltentity, function(event)
	if event.createdentity.name == "nuclear-reactor" then
		event.createdentity.operable = false
		for i,player in ipairs(game.players) do
			game.players[i].insert({name = "nuclear-reactor-container", count = 1})
			game.players[i].print("Please place the reactor container next to the reactor.")
		end
	elseif event.createdentity.name == "nuclear-reactor-container" then
		
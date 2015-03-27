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

glob.entitypos = {}
glob.entityinfo = {}
--[[glob.entityinfo[1] = nuclear-reactor-container = {}
nuclear-reactor-container[1] = false]]--
glob.tick = {}

game.onevent(defines.events.onputitem, function(event)
--Saving the coordinates of the placed entity
	glob.entitypos[1] = event.position.x-2 --Left Top
	glob.entitypos[2] = event.position.y+2
	
	glob.entitypos[4] = event.position.x+2 --Right Bottom
	glob.entitypos[5] = event.position.y-2
	
	glob.entitypos[6] = event.position.x-3
	glob.entitypos[7] = event.position.y
end)

--[[Reactor Code]]--

game.onevent(defines.events.onbuiltentity, function(event)

	if event.createdentity.name == "nuclear-reactor" then
		glob.entityinfo[1] = game.createdentity
		event.createdentity.operable = false
		if (game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[6], glob.entitypos[7]}, force=game.forces.player}) then
			game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[6], glob.entitypos[7]}, force=game.forces.player}
		else
			for i,player in pairs(game.players) do
				player.print("The nuclear reactor couldn't be placed. Please make sure the complete 6x6 area is clear, and you place the reactor in the middle.")
			end
			glob.entitypos[10].destroy()
			game.players[i].insert({name = "nuclear-reactor", count = 1})
		end
	end
	
	if event.createdentity.name == "nuclear-reactor-container" then
		glob.entityinfo[2] = game.createdentity
	end
end)

--[[game.onevent(defines.events.onguiclick, function(event)
	if event.guielement.name = "nuclear-reactor-container" then
		nuclear-reactor-container[1] = true
	end
end)]]--

game.onevent(defines.events.ontick, function(event)
	if glob.ontick[1] == 59 then
		moveFuel()
		calcEnergy()
		glob.ontick[1] = 0
	else
		glob.ontick[1] = glob.ontick[1] + 1
	end
end)

function moveFuel()
	if glob.createdentity[2].getinventory(1).isempty() ~= true then
		game.player.print("Ur a smartass u MagicLegend")
		game.player.print(glob.createdentity[2].getinventory(1).getcontents())
		local content = glob.createdentity[2].getinventory(1).getcontents()
	end
end)
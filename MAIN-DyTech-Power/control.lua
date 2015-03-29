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

function datadump(str)
	if debug_master then
		game.makefile("DataDump/dump.txt", serpent.block(str))
	end
end

--[[Insert Fancy Code Here:]]--

glob.entitypos = {}
glob.entityinfo = {}
--[[glob.entityinfo[1] = nuclear-reactor-container = {}
nuclear-reactor-container[1] = false]]--
glob.tick = {}
glob.tick[1] = 0
glob.usedFuel = {}

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
		--glob.entityinfo[1] = event.createdentity
		event.createdentity.operable = false
		if (game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[6], glob.entitypos[7]}, force=game.forces.player}) then
			game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[6], glob.entitypos[7]}, force=game.forces.player}
			glob.entityinfo[2] = game.findentitiesfiltered{area = {{glob.entitypos[6]-1, glob.entitypos[7]+1}, {glob.entitypos[6]+1, glob.entitypos[7]-1}}, name = "nuclear-reactor-container"}
			datadump(glob.entityinfo)
		else
			for i,player in pairs(game.players) do
				player.print("The nuclear reactor couldn't be placed. Please make sure the complete 6x6 area is clear, and you place the reactor in the middle.")
			end
			glob.entitypos[10].destroy()
			game.players[i].insert({name = "nuclear-reactor", count = 1})
		end
	end
	
--[[if event.createdentity.name == "nuclear-reactor-container" then
		glob.entityinfo[2] = event.createdentity.getinventory(1)
		datadump(glob.entityinfo)
	end]]--
end)

--[[game.onevent(defines.events.onguiclick, function(event)
	if event.guielement.name = "nuclear-reactor-container" then
		nuclear-reactor-container[1] = true
	end
end)]]--

game.onevent(defines.events.ontick, function(event)
	if glob.tick[1] == 590 then
		moveFuel()
		calcEnergy()
		glob.tick[1] = 0
	else
		glob.tick[1] = glob.tick[1] + 1
	end
end)

function moveFuel()
	if glob.entityinfo[2] ~= nil then
		if glob.entityinfo[2].getinventory().isempty() == false then
			debug("Ur a smartass u MagicLegend")
			debug(glob.entityinfo[2].getinventory(1).getcontents())
				glob.usedFuel[1] = glob.entityinfo[2].getinventory(1).getcontents()
			debug("The usedFuel variable contains: "..usedFuel[1])
				glob.entityinfo[2].removeitem(1)
		end
	end
end

function calcEnergy()
	if glob.usedFuel[1] ~= nil then
		if glob.usedFuel[1] == "Plutonium" then
			debug("Plutonium all the way!")
		elseif glob.usedFuel[1] == "Uranium" then
			debug("Uranium is your friend!")
		else
			debug("I have no idea what that is... But it doesn't look like something burnable in a reactor!")
			game.player.insert({name=glob.usedFuel[1],count=1})
		end
	else
		debug("No fuel")
	end
end
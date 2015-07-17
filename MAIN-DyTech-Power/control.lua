require "defines"
require "util"
require "prototypes.internal-config"
require "gui.gui"

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

function print(str)
	for _,player in pairs(game.players) do
		player.print(str)
	end
end

function datablock(str, strname)
	if debug_master then
		game.makefile("DataDump/block "..strname..".txt", serpent.block(str))
		debug("Made serpent.block file: "..strname)
	end
end

function datadump(str, strname)
	if debug_master then
		game.makefile("DataDump/dump "..strname..".txt", serpent.dump(str))
		debug("Made serpent.dump file: "..strname)
	end
end

--Warning: Performancekiller!!
--[[function sleep(s)
glob.tick[1] = glob.tick[2]
glob.tick[3] = glob.tick[2] + s
if glob.tick[2] == glob.tick[3] then
	return
end
end]]

--[[Insert Fancy Code Here:]]--
game.oninit(function()
glob.tick = {}
glob.tick[1] = 0
glob.tick[2] = 0
glob.usedFuel = {}
glob.usedFuel.EntityContents = {}
glob.entitypos = {}
glob.entityinfo = {}
glob.entitycount = 0
glob.dynamoentitycount = 0
glob.entitypos2 = {}
glob.itemcount = {}
glob.item = {}

glob.fuel = {}
glob.fuel[1] = "u-235-3-0"
glob.fuel[2] = "u-235-3-5"
glob.fuel[3] = "u-235-4-0"
glob.fuel[4] = "u-235-4-5"
glob.fuel[5] = "u-235-5-0"

glob.nearby_steam_engines = {}
glob.guiactivationdistance = 1

glob.steam = {}
glob.steam[1].primary = "primary-steam-engine"
glob.steam[1].secondary = "secondary-steam-engine"
glob.steam[1].tertiary = "tertiary-steam-engine"
glob.steam[2].primary = "primary-steam-engine-mk2"
glob.steam[2].secondary = "secondary-steam-engine-mk2"
glob.steam[2].tertiary = "tertiary-steam-engine-mk2"
glob.steam[3].primary = "primary-steam-engine-mk3"
glob.steam[3].secondary = "secondary-steam-engine-mk3"
glob.steam[3].tertiary = "tertiary-steam-engine-mk3"
glob.steam[4].primary = "primary-steam-engine-mk4"
glob.steam[4].secondary = "secondary-steam-engine-mk4"
glob.steam[4].tertiary = "tertiary-steam-engine-mk4"
glob.steam[5].primary = "primary-steam-engine-mk5"
glob.steam[5].secondary = "secondary-steam-engine-mk5"
glob.steam[5].tertiary = "tertiary-steam-engine-mk5"
end)

--[[Steam Engine Code]]--

function CheckPlayerIsNearEngine(player)
if not glob.nearby_steam_engines[player.name] then
	for i in pairs(glob.steam) do
		if not searcharea then searcharea = {} end
		local searcharea = SquareArea(player.position, glob.guiactivationdistance)
		local nearEngines = game.findentitiesfiltered{area = searcharea, name = glob.steam[i].primary}
		if nearbyEngines and not nearbyEngines.valid then
			if gui[player.name] then CloseGUI(player) end
			nearbyEngines[player.name] = nil
		elseif nearbyEngines and nearEngines.valid then
			local dist = util.distance(player.position, nearbyEngines[player.name].position)
			if dist > glob.guiactivationdistance + 2 then
				if gui[player.name] then CloseGUI(player) end
				nearbyEngines[player.name] = nil
			end
		end
	end
	if #nearEngines > 0 then
		if not gui[player.name] then
			gui[player.name] = OpenGUI(player)
		end
	end
end
end


game.onevent(defines.events.ontick, function(event)
--ticking like a timebomb
for playerIndex, player in ipairs(game.players) do
	if nearbyEngines and not nearEngines.valid then
		--CloseGUI(player)
		debug("CloseGUI")
	end
	
	if glob.tick[1] == 30 then
		CheckPlayerIsNearEngine(player)
		debug("CheckPlayerIsNearEngine"
	end
end)

--[[Reactor Code]]--

game.onevent(defines.events.onbuiltentity, function(event)

	if event.createdentity.name == "nuclear-reactor" then
	--Saving the coordinates of the placed entity
	glob.entitycount = glob.entitycount + 1
	datadump(glob.entitycount, "glob.entitycount")
	
	glob.entitypos[glob.entitycount] = {}
	glob.entitypos[glob.entitycount].TopLeftX = event.createdentity.position.x-2 --Left Top
	glob.entitypos[glob.entitycount].TopLeftY = event.createdentity.position.y+2
	glob.entitypos[glob.entitycount].TopRightX = event.createdentity.position.x+2 --Right Top
	glob.entitypos[glob.entitycount].TopRightY = event.createdentity.position.y+2

	glob.entitypos[glob.entitycount].BottomLeftX = event.createdentity.position.x-2  --Left Bottom
	glob.entitypos[glob.entitycount].BottomLeftY = event.createdentity.position.y-2
	glob.entitypos[glob.entitycount].BottomRightX = event.createdentity.position.x+2 --Right Bottom
	glob.entitypos[glob.entitycount].BottomRightY = event.createdentity.position.y-2
	
	glob.entitypos[glob.entitycount].ContainerX = event.createdentity.position.x-3
	glob.entitypos[glob.entitycount].ContainerY = event.createdentity.position.y
	
	
		glob.entityinfo[glob.entitycount] = {}
		glob.entityinfo[glob.entitycount].ContainerEntity = {}
		glob.entityinfo[glob.entitycount].ReactorEntity = {}
		glob.entityinfo[glob.entitycount].ReactorEntity = event.createdentity
--		datadump(glob.entityinfo[glob.entitycount].ReactorEntity, "glob.entityinfo[glob.entitycount].ReactorEntity")
--		debug(glob.entityinfo[glob.entitycount].ReactorEntity.name)
--		event.createdentity.operable = false
		
		if (game.canplaceentity{name = "nuclear-reactor-container", position = {glob.entitypos[glob.entitycount].ContainerX, glob.entitypos[glob.entitycount].ContainerY}}) then
			game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[glob.entitycount].ContainerX, glob.entitypos[glob.entitycount].ContainerY}, force=game.forces.player}
--			glob.entityinfo[glob.entitycount].ContainerEntity = game.findentitiesfiltered{area = {{glob.entitypos[glob.entitycount].ContainerX, glob.entitypos[glob.entitycount].ContainerY}, {glob.entitypos[glob.entitycount].ContainerX, glob.entitypos[glob.entitycount].ContainerY}}, name = "nuclear-reactor-container"}
			local newReactor = game.createentity{name = "nuclear-reactor-container", position = {glob.entitypos[glob.entitycount].ContainerX, glob.entitypos[glob.entitycount].ContainerY}, force=game.forces.player}
			glob.entityinfo[glob.entitycount].ContainerEntity = newReactor
			if glob.entityinfo[glob.entitycount].ContainerEntity.name == "nuclear-reactor-container" then
				debug("Correct Entity Found!")
			elseif glob.entityinfo[glob.entitycount].ContainerEntity.name == "nuclear-reactor" then
				debug("Nuclear Reactor Found!")
			else
				debug("Incorrect Entity Found!")
			end
			datadump(glob.entityinfo[glob.entitycount], "Placed-Entity")
		else
			for i,player in ipairs(game.players) do
				player.print("The nuclear reactor couldn't be placed. Please make sure the complete 6x6 area is clear, and you place the reactor in the middle.")
				game.players[i].insert({name = "nuclear-reactor", count = 1})
			end
			glob.entityinfo[glob.entitycount].ReactorEntity.destroy()
			glob.entityinfo[glob.entitycount].ReactorEntity = nil
			glob.entityinfo[glob.entitycount].ContainerEntity = nil
		end
	end
	if event.createdentity.name == "nuclear-dynamo" then
	
	glob.dynamoentitycount = glob.dynamoentitycount + 1
	
	glob.entitypos2[glob.dynamoentitycount] = {}
	glob.entitypos2[glob.dynamoentitycount].TopLeftX = event.createdentity.position.x-1 --Left Top
	glob.entitypos2[glob.dynamoentitycount].TopLeftY = event.createdentity.position.y+3
	glob.entitypos2[glob.dynamoentitycount].TopRightX = event.createdentity.position.x+1 --Right Top
	glob.entitypos2[glob.dynamoentitycount].TopRightY = event.createdentity.position.y+3

	glob.entitypos2[glob.dynamoentitycount].BottomLeftX = event.createdentity.position.x-1  --Left Bottom
	glob.entitypos2[glob.dynamoentitycount].BottomLeftY = event.createdentity.position.y-3
	glob.entitypos2[glob.dynamoentitycount].BottomRightX = event.createdentity.position.x+1 --Right Bottom
	glob.entitypos2[glob.dynamoentitycount].BottomRightY = event.createdentity.position.y-3

	if glob.entitypos[glob.entitycount].TopLeftX == glob.entitypos2[glob.dynamoentitycount].TopLeftX and glob.entitypos[glob.entitycount].TopLeftY-1 == glob.entitypos2[glob.dynamoentitycount].TopLeftY then
		debug("TopLeft")
		if glob.entitypos[glob.entitycount].TopRightX == glob.entitypos2[glob.dynamoentitycount].TopRightX and glob.entitypos[glob.entitycount].TopRightY-1 == glob.entitypos2[glob.dynamoentitycount].TopRightY then
			debug("TopRight")
		else
			debug("TopRight went wrong")
		end
	else
		debug("TopLeft went wrong")
	end
	end
end)

game.onevent(defines.events.ontick, function(event)
if debug_master then
	if glob.tick[1] == 300 then
		debug("moveFuel")
		moveFuel()
	end
	if glob.tick[1] == 325 then
		debug("calcEnergy")
		calcEnergy()
		glob.tick[1] = 0
	else
		glob.tick[1] = glob.tick[1] + 1
	end
else
	if glob.tick[1] == 30 then
		moveFuel()
	end
	if glob.tick[1] == 35 then
		calcEnergy()
		glob.tick[1] = 0
	else
		glob.tick[1] = glob.tick[1] + 1
	end
end
end)

game.onevent(defines.events.onpreplayermineditem, function(event)
if event.entity.name == "nuclear-reactor" then
	glob.entityinfo[glob.entitycount].ContainerEntity.destroy()
end
end)

function moveFuel()
for i, entitycount in pairs(glob.entityinfo) do
	if glob.entityinfo[i].ReactorEntity ~= nil and glob.entityinfo[i].ContainerEntity ~= nil then
		if glob.entityinfo[glob.entitycount].ContainerEntity.getinventory(1).isempty() == false then
			glob.usedFuel = {}
			glob.entityinfo[glob.entitycount].EntityInv = glob.entityinfo[glob.entitycount].ContainerEntity.getinventory(1)
			glob.entityinfo[glob.entitycount].EntityContents = glob.entityinfo[glob.entitycount].EntityInv.getcontents()
			glob.usedFuel[glob.entitycount] = glob.entityinfo[glob.entitycount].EntityContents
		else
			debug("Container is empty")
--			glob.usedFuel[glob.entitycount] = nil
		end
	else
	debug("glob.entityinfo[i].ReactorEntity = nil or glob.entityinfo[i].ReactorEntity = nil")
	end
end
end

function calcEnergy()
for i, entitycount in pairs(glob.entityinfo) do
if glob.entityinfo[glob.entitycount].EntityInv ~= nil then
	container = glob.entityinfo[glob.entitycount].EntityInv
	--Checking which item is inside the inputchest
	if glob.usedFuel[glob.entitycount] ~= nil then
	if not glob.usedFuel[glob.entitycount] then glob.usedFuel[glob.entitycount] = {} end
	glob.usedFuel[glob.entitycount].found = false
		checkItem("raw-wood")
		for i in pairs(glob.fuel) do
			if glob.usedFuel[glob.entitycount].found then
				break
			else
				checkItem(glob.fuel[i])
			end
		end
	clearinv()
	else
		debug("No fuel")
	end
	
--	if not glob.usedFuel[glob.entitycount].used then glob.usedFuel[glob.entitycount].used = {} end
	
--	datadump(glob.usedFuel[glob.entitycount].used, "glob.usedFuel[glob.entitycount].used")
	debug("dumped glob.usedFuel")
	--calculating the energy that needs to be produced
	if glob.usedFuel[glob.entitycount].found == true then
		if glob.usedFuel[glob.entitycount].used == "u-235-3-0" then
			glob.entityinfo[glob.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 1 reactorfuel")
		end
		if glob.usedFuel[glob.entitycount].used == "u-235-3-5" then
			glob.entityinfo[glob.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 10 reactorfuel")
		end
		if glob.usedFuel[glob.entitycount].used == "u-235-4-0" then
			glob.entityinfo[glob.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 100 reactorfuel")
		end
		if glob.usedFuel[glob.entitycount].used == "u-235-4-5" then
			glob.entityinfo[glob.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 10})
			debug("Inserted 1000 reactorfuel")
		end
		if glob.usedFuel[glob.entitycount].used == "u-235-5-0" then
			glob.entityinfo[glob.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 100})
			debug("Inserted 10000 reactorfuel")
		end
	end
else
	debug("entityinv is nil")
end
end
end

function clearinv()
for i, entitycount in pairs(glob.entityinfo) do
	glob.entityinfo[glob.entitycount].ContainerEntity.getinventory(1).clear()
end
end

function checkItem(item)
if not glob.itemcount.item then glob.itemcount.item = {} end
if glob.itemcount.item ~= nil then glob.itemcount.item = nil end
if glob.entityinfo[glob.entitycount].EntityInv ~= nil then
	glob.itemcount.item = item
	glob.itemcount[glob.item] = glob.entityinfo[glob.entitycount].EntityInv.getitemcount(item)
	
	if glob.itemcount[glob.item] > 0 and glob.itemcount.item == item then
		debug("I found "..item)
		glob.usedFuel[glob.entitycount].used = item
		glob.usedFuel[glob.entitycount].found = true
	else
		debug("found nothing")
		glob.usedFuel[glob.entitycount].found = false
		glob.usedFuel[glob.entitycount].used = nil
--		glob.entityinfo[glob.entitycount].EntityInv = nil
	end	
end
end
--Don't mind me:
--/c game.player.insert{name="nuclear-reactor",count=1}
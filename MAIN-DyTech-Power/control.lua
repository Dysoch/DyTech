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
global.tick[1] = global.tick[2]
global.tick[3] = global.tick[2] + s
if global.tick[2] == global.tick[3] then
	return
end
end]]

--[[Insert Fancy Code Here:]]--
game.on_init(function()
global.tick = {}
global.tick[1] = 0
global.tick[2] = 0
global.usedFuel = {}
global.usedFuel.EntityContents = {}
global.entitypos = {}
global.entityinfo = {}
global.entitycount = 0
global.dynamoentitycount = 0
global.entitypos2 = {}
global.itemcount = {}
global.item = {}

global.fuel = {}
global.fuel[1] = "u-235-3-0"
global.fuel[2] = "u-235-3-5"
global.fuel[3] = "u-235-4-0"
global.fuel[4] = "u-235-4-5"
global.fuel[5] = "u-235-5-0"

global.nearby_steam_engines = {}
global.guiactivationdistance = 1

global.steam = {}
global.steam[1] = {}
global.steam[2] = {}
global.steam[3] = {}
global.steam[4] = {}
global.steam[5] = {}
global.steam[1].primary = {}
global.steam[1].secondary = {}
global.steam[1].tertiary = {}
global.steam[2].primary = {}
global.steam[2].secondary = {}
global.steam[2].tertiary = {}
global.steam[3].primary = {}
global.steam[3].secondary = {}
global.steam[3].tertiary = {}
global.steam[4].primary = {}
global.steam[4].secondary = {}
global.steam[4].tertiary = {}
global.steam[5].primary = {}
global.steam[5].secondary = {}
global.steam[5].tertiary = {}

global.steam[1].primary = "primary-steam-engine"
global.steam[1].secondary = "secondary-steam-engine"
global.steam[1].tertiary = "tertiary-steam-engine"
global.steam[2].primary = "primary-steam-engine-mk2"
global.steam[2].secondary = "secondary-steam-engine-mk2"
global.steam[2].tertiary = "tertiary-steam-engine-mk2"
global.steam[3].primary = "primary-steam-engine-mk3"
global.steam[3].secondary = "secondary-steam-engine-mk3"
global.steam[3].tertiary = "tertiary-steam-engine-mk3"
global.steam[4].primary = "primary-steam-engine-mk4"
global.steam[4].secondary = "secondary-steam-engine-mk4"
global.steam[4].tertiary = "tertiary-steam-engine-mk4"
global.steam[5].primary = "primary-steam-engine-mk5"
global.steam[5].secondary = "secondary-steam-engine-mk5"
global.steam[5].tertiary = "tertiary-steam-engine-mk5"
end)

--[[Steam Engine Code]]--

function CheckPlayerIsNearEngine(player)
if not global.nearby_steam_engines[player.name] then
	for i in pairs(global.steam) do
		if not searcharea then searcharea = {} end
		local searcharea = SquareArea(player.position, global.guiactivationdistance)
		local nearEngines = game.findentitiesfiltered{area = searcharea, name = global.steam[i].primary}
		if nearbyEngines and not nearbyEngines.valid then
			if gui[player.name] then CloseGUI(player) end
			nearbyEngines[player.name] = nil
		elseif nearbyEngines and nearEngines.valid then
			local dist = util.distance(player.position, nearbyEngines[player.name].position)
			if dist > global.guiactivationdistance + 2 then
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


game.on_event(defines.events.on_tick, function(event)
--ticking like a timebomb
for player_Index, player in ipairs(game.players) do
	if nearbyEngines and not nearEngines.valid then
		--CloseGUI(player)
		debug("CloseGUI")
	end
	
	if global.tick[1] == 30 then
		CheckPlayerIsNearEngine(player)
		debug("CheckPlayerIsNearEngine")
	end
end
end)

--[[Reactor Code]]--

game.on_event(defines.events.on_built_entity, function(event)

	if event.createdentity.name == "nuclear-reactor" then
	--Saving the coordinates of the placed entity
	global.entitycount = global.entitycount + 1
	datadump(global.entitycount, "global.entitycount")
	
	global.entitypos[global.entitycount] = {}
	global.entitypos[global.entitycount].TopLeftX = event.createdentity.position.x-2 --Left Top
	global.entitypos[global.entitycount].TopLeftY = event.createdentity.position.y+2
	global.entitypos[global.entitycount].TopRightX = event.createdentity.position.x+2 --Right Top
	global.entitypos[global.entitycount].TopRightY = event.createdentity.position.y+2

	global.entitypos[global.entitycount].BottomLeftX = event.createdentity.position.x-2  --Left Bottom
	global.entitypos[global.entitycount].BottomLeftY = event.createdentity.position.y-2
	global.entitypos[global.entitycount].BottomRightX = event.createdentity.position.x+2 --Right Bottom
	global.entitypos[global.entitycount].BottomRightY = event.createdentity.position.y-2
	
	global.entitypos[global.entitycount].ContainerX = event.createdentity.position.x-3
	global.entitypos[global.entitycount].ContainerY = event.createdentity.position.y
	
	
		global.entityinfo[global.entitycount] = {}
		global.entityinfo[global.entitycount].ContainerEntity = {}
		global.entityinfo[global.entitycount].ReactorEntity = {}
		global.entityinfo[global.entitycount].ReactorEntity = event.createdentity
--		datadump(global.entityinfo[global.entitycount].ReactorEntity, "global.entityinfo[global.entitycount].ReactorEntity")
--		debug(global.entityinfo[global.entitycount].ReactorEntity.name)
--		event.createdentity.operable = false
		
		if (game.canplaceentity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}}) then
			game.createentity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, force=game.forces.player}
--			global.entityinfo[global.entitycount].ContainerEntity = game.findentitiesfiltered{area = {{global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}}, name = "nuclear-reactor-container"}
			local newReactor = game.createentity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, force=game.forces.player}
			global.entityinfo[global.entitycount].ContainerEntity = newReactor
			if global.entityinfo[global.entitycount].ContainerEntity.name == "nuclear-reactor-container" then
				debug("Correct Entity Found!")
			elseif global.entityinfo[global.entitycount].ContainerEntity.name == "nuclear-reactor" then
				debug("Nuclear Reactor Found!")
			else
				debug("Incorrect Entity Found!")
			end
			datadump(global.entityinfo[global.entitycount], "Placed-Entity")
		else
			for i,player in ipairs(game.players) do
				player.print("The nuclear reactor couldn't be placed. Please make sure the complete 6x6 area is clear, and you place the reactor in the middle.")
				game.players[i].insert({name = "nuclear-reactor", count = 1})
			end
			global.entityinfo[global.entitycount].ReactorEntity.destroy()
			global.entityinfo[global.entitycount].ReactorEntity = nil
			global.entityinfo[global.entitycount].ContainerEntity = nil
		end
	end
	if event.createdentity.name == "nuclear-dynamo" then
	
	global.dynamoentitycount = global.dynamoentitycount + 1
	
	global.entitypos2[global.dynamoentitycount] = {}
	global.entitypos2[global.dynamoentitycount].TopLeftX = event.createdentity.position.x-1 --Left Top
	global.entitypos2[global.dynamoentitycount].TopLeftY = event.createdentity.position.y+3
	global.entitypos2[global.dynamoentitycount].TopRightX = event.createdentity.position.x+1 --Right Top
	global.entitypos2[global.dynamoentitycount].TopRightY = event.createdentity.position.y+3

	global.entitypos2[global.dynamoentitycount].BottomLeftX = event.createdentity.position.x-1  --Left Bottom
	global.entitypos2[global.dynamoentitycount].BottomLeftY = event.createdentity.position.y-3
	global.entitypos2[global.dynamoentitycount].BottomRightX = event.createdentity.position.x+1 --Right Bottom
	global.entitypos2[global.dynamoentitycount].BottomRightY = event.createdentity.position.y-3

	if global.entitypos[global.entitycount].TopLeftX == global.entitypos2[global.dynamoentitycount].TopLeftX and global.entitypos[global.entitycount].TopLeftY-1 == global.entitypos2[global.dynamoentitycount].TopLeftY then
		debug("TopLeft")
		if global.entitypos[global.entitycount].TopRightX == global.entitypos2[global.dynamoentitycount].TopRightX and global.entitypos[global.entitycount].TopRightY-1 == global.entitypos2[global.dynamoentitycount].TopRightY then
			debug("TopRight")
		else
			debug("TopRight went wrong")
		end
	else
		debug("TopLeft went wrong")
	end
	end
end)

game.on_event(defines.events.on_tick, function(event)
if debug_master then
	if global.tick[1] == 300 then
		debug("moveFuel")
		moveFuel()
	end
	if global.tick[1] == 325 then
		debug("calcEnergy")
		calcEnergy()
		global.tick[1] = 0
	else
		global.tick[1] = global.tick[1] + 1
	end
else
	if global.tick[1] == 30 then
		moveFuel()
	end
	if global.tick[1] == 35 then
		calcEnergy()
		global.tick[1] = 0
	else
		global.tick[1] = global.tick[1] + 1
	end
end
end)

game.on_event(defines.events.on_player_mined_item, function(event)
if event.entity.name == "nuclear-reactor" then
	global.entityinfo[global.entitycount].ContainerEntity.destroy()
end
end)

function moveFuel()
for i, entitycount in pairs(global.entityinfo) do
	if global.entityinfo[i].ReactorEntity ~= nil and global.entityinfo[i].ContainerEntity ~= nil then
		if global.entityinfo[global.entitycount].ContainerEntity.getinventory(1).isempty() == false then
			global.usedFuel = {}
			global.entityinfo[global.entitycount].EntityInv = global.entityinfo[global.entitycount].ContainerEntity.getinventory(1)
			global.entityinfo[global.entitycount].EntityContents = global.entityinfo[global.entitycount].EntityInv.getcontents()
			global.usedFuel[global.entitycount] = global.entityinfo[global.entitycount].EntityContents
		else
			debug("Container is empty")
--			global.usedFuel[global.entitycount] = nil
		end
	else
	debug("global.entityinfo[i].ReactorEntity = nil or global.entityinfo[i].ReactorEntity = nil")
	end
end
end

function calcEnergy()
for i, entitycount in pairs(global.entityinfo) do
if global.entityinfo[global.entitycount].EntityInv ~= nil then
	container = global.entityinfo[global.entitycount].EntityInv
	--Checking which item is inside the inputchest
	if global.usedFuel[global.entitycount] ~= nil then
	if not global.usedFuel[global.entitycount] then global.usedFuel[global.entitycount] = {} end
	global.usedFuel[global.entitycount].found = false
		checkItem("raw-wood")
		for i in pairs(global.fuel) do
			if global.usedFuel[global.entitycount].found then
				break
			else
				checkItem(global.fuel[i])
			end
		end
	clearinv()
	else
		debug("No fuel")
	end
	
--	if not global.usedFuel[global.entitycount].used then global.usedFuel[global.entitycount].used = {} end
	
--	datadump(global.usedFuel[global.entitycount].used, "global.usedFuel[global.entitycount].used")
	debug("dumped global.usedFuel")
	--calculating the energy that needs to be produced
	if global.usedFuel[global.entitycount].found == true then
		if global.usedFuel[global.entitycount].used == "u-235-3-0" then
			global.entityinfo[global.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 1 reactorfuel")
		end
		if global.usedFuel[global.entitycount].used == "u-235-3-5" then
			global.entityinfo[global.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 10 reactorfuel")
		end
		if global.usedFuel[global.entitycount].used == "u-235-4-0" then
			global.entityinfo[global.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 1})
			debug("Inserted 100 reactorfuel")
		end
		if global.usedFuel[global.entitycount].used == "u-235-4-5" then
			global.entityinfo[global.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 10})
			debug("Inserted 1000 reactorfuel")
		end
		if global.usedFuel[global.entitycount].used == "u-235-5-0" then
			global.entityinfo[global.entitycount].ReactorEntity.insert({name = "reactor-fuel", count = 100})
			debug("Inserted 10000 reactorfuel")
		end
	end
else
	debug("entityinv is nil")
end
end
end

function clearinv()
for i, entitycount in pairs(global.entityinfo) do
	global.entityinfo[global.entitycount].ContainerEntity.getinventory(1).clear()
end
end

function checkItem(item)
if not global.itemcount.item then global.itemcount.item = {} end
if global.itemcount.item ~= nil then global.itemcount.item = nil end
if global.entityinfo[global.entitycount].EntityInv ~= nil then
	global.itemcount.item = item
	global.itemcount[global.item] = global.entityinfo[global.entitycount].EntityInv.getitemcount(item)
	
	if global.itemcount[global.item] > 0 and global.itemcount.item == item then
		debug("I found "..item)
		global.usedFuel[global.entitycount].used = item
		global.usedFuel[global.entitycount].found = true
	else
		debug("found nothing")
		global.usedFuel[global.entitycount].found = false
		global.usedFuel[global.entitycount].used = nil
--		global.entityinfo[global.entitycount].EntityInv = nil
	end	
end
end
--Don't mind me:
--/c game.player.insert{name="nuclear-reactor",count=1}
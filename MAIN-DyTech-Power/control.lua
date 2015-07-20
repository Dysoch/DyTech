require "defines"
require "util"
require "config"
require "prototypes.internal-config"
require "gui.gui"
require "gui.functions"

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

global.nearbySteamEngines = {}
global.guiactivationdistance = 1
global.gui_activation_distance = 1
global.nearby_engine = {}
global.nearEngines = {}
global.gui = {}
global.prioritycheck = false

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

global.steam[1].primary = "steam-engine-primary"
global.steam[1].secondary = "steam-engine"
global.steam[1].tertiary = "steam-engine-terciary"
global.steam[2].primary = "steam-engine-primary-mk2"
global.steam[2].secondary = "steam-engine-secondary-mk2"
global.steam[2].tertiary = "steam-engine-terciary-mk2"
global.steam[3].primary = "steam-engine-primary-mk3"
global.steam[3].secondary = "steam-engine-secondary-mk3"
global.steam[3].tertiary = "steam-engine-terciary-mk3"
global.steam[4].primary = "steam-engine-primary-mk4"
global.steam[4].secondary = "steam-engine-secondary-mk4"
global.steam[4].tertiary = "steam-engine-terciary-mk4"
global.steam[5].primary = "steam-engine-primary-mk5"
global.steam[5].secondary = "steam-engine-secondary-mk5"
global.steam[5].tertiary = "steam-engine-terciary-mk5"
end)

--[[Steam Engine Code]]--

game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
    if event.element.name == "DyTech-Power-Button" then
        remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
        GUI.PushParent(player.gui.left)
		if not global.dytechpowergui then global.dytechpowergui = {} end
		global.dytechpowergui[player.name] = GUI.PushParent(GUI.Frame("dytech-power-gui", "Dytech Power GUI", GUI.VERTICAL))
		GUI.PushParent(GUI.Flow("main_buttons", GUI.VERTICAL))
		local checkbox = GUI.Checkbox("Switch Priority", priorityswitch)
	elseif event.element.name == "priorityswitch" then
		if event.element.state == true then
			global.prioritycheck = true
		else
			global.prioritycheck = false
		end
	elseif (event.element.name == "primary") then
		--do primary stuff
		debug("You clicked: Primary")
		global.secondarybox.state = false
		global.tertiarybox.state = false
		
		if global.nearEngines.primary.valid then
			global.primarybox.state = true
			debug("what u doing? I'm already activated!")
		elseif global.nearEngines.secondary.valid then
			local pos = global.nearEngines.secondary.position
			local name = global.nearEnginges.secondary.name
			global.nearEngines.secondary.destroy()
			
			for i in pairs(global.steam) do
				if name == glob.steam[i].secondary then
					debug("found it: "..glob.steam[i].secondary)
					local mk = i
				else
					debug("nope, "..glob.steam[i].secondary)
				end
			end
			
			game.create_entity{name = global.steam[mk].secondary, position = pos}
			
		elseif global.nearEngines.tertiary.valid then
			local pos = global.nearEngines.tertiary.position
			local name = global.nearEnginges.tertiary.name
			global.nearEngines.tertiary.destroy()
			
			for i in pairs(global.steam) do
				if name == glob.steam[i].tertiary then
					debug("found it: "..glob.steam[i].tertiary)
					local mk = i
				else
					debug("nope, "..glob.steam[i].tertiary)
				end
			end
			
			game.create_entity{name = global.steam[mk].tertiary, position = pos}
		else
			debug("I have no fucking idea")
		end
	elseif event.element.name == "secondary" then
		--do secondary stuff
		debug("You clicked: Secondary")
		global.primarybox.state = false
		global.tertiarybox.state = false
	elseif event.element.name == "tertiary" then
		--do tertiary stuff
		debug("You clicked: Teritary")
		global.primarybox.state = false
		global.secondarybox.state = false
	end
end)


function CheckPlayerIsNearEngine(player)
for i in pairs(global.steam) do
local nearbyEngine = global.nearby_engine[player.name]
	if nearbyEngine and not nearbyEngine.valid then
		if global.gui[player.name] then CloseGUI(player) end
		global.nearby_engine[player.name] = nil
	elseif nearbyEngine and nearbyEngine.valid then
		local dist = util.distance(player.position, global.nearby_engine[player.name].position)
		if dist > global.gui_activation_distance + 2 then
			if global.gui[player.name] then CloseGUI(player) end
			global.nearby_engine[player.name] = nil
		end
	else
		--primary engine
		local searchArea1 = SquareArea(player.position, global.gui_activation_distance)
		global.nearEngines.primary = player.surface.find_entities_filtered{area = searchArea1, name = global.steam[i].primary}
		if #global.nearEngines.primary > 0 then
			global.nearby_engine[player.name] = global.nearEngines.primary[1]
			if not global.gui[player.name] then 
				OpenGUI(player, "primary")
				--global.gui[player.name] = true
				debug("Opening GUI, primary")
			else
				debug("nope, no global.gui for you!")
			end
		end

		--secondary engine
		local searchArea2 = SquareArea(player.position, global.gui_activation_distance)
		global.nearEngines.secondary = player.surface.find_entities_filtered{area = searchArea2, name = global.steam[i].secondary}
		if #global.nearEngines.secondary > 0 then
			global.nearby_engine[player.name] = global.nearEngines.secondary[1]
			if not global.gui[player.name] then 
				OpenGUI(player, "secondary")
				--global.gui[player.name] = true
				debug("Opening GUI, secondary")
			else
				debug("nope, no global.gui for you!")
			end
		end

		--tertiary engine
		local searchArea3 = SquareArea(player.position, global.gui_activation_distance)
		global.nearEngines.tertiary = player.surface.find_entities_filtered{area = searchArea3, name = global.steam[i].tertiary}
		if #global.nearEngines.tertiary > 0 then
			global.nearby_engine[player.name] = global.nearEngines.tertiary[1]
			if not global.gui[player.name] then 
				OpenGUI(player, "tertiary")
				--global.gui[player.name] = true
				debug("Opening GUI, tertiary")
			else
				debug("nope, no global.gui for you!")
			end
		end
	end

end
end


function OpenGUI(player, output)

--[[	player.gui.top.add({type="flow", direction="vertical", name="DyTechPowerFlow"})
	player.gui.top["DyTechPowerFlow"].add({type="frame", direction="vertical", name="steamengine_gui", caption={"steamengine-gui"}})
	adder = player.gui.top["DyTechPowerFlow"]["steamengine_gui"] ]]
	
	GUI.PushParent(player.gui.left)
	global.gui[player.name] = GUI.PushParent(GUI.Frame("steamengine_gui", "Steam Engine Control", GUI.VERTICAL))
	GUI.PushParent(GUI.Flow("main_buttons", GUI.VERTICAL))
	global.primarybox = GUI.Checkbox("Primary", primarytoggle)
	global.secondarybox = GUI.Checkbox("Secondary", secondarytoggle)
	global.tertiarybox = GUI.Checkbox("Tertiary", tertiarytoggle)

--[[	local primarybox = adder.add{type = "checkbox", caption = "Primary", name = "primary", state = false}
	local secondarybox = adder.add{type = "checkbox", caption = "Secondary", name = "secondary", state = false}
	local tertiarybox = adder.add{type = "checkbox", caption = "Tertiary", name = "tertiary", state = false}]]
	
	if output == "primary" then
		global.primarybox.state = true
	elseif output == "secondary" then
		global.secondarybox.state = true
	elseif output == "tertiary" then
		global.tertiarybox.state = true
	else
		return
	end
	GUI.PopAll()
end

function CloseGUI(player)
	debug("closed the gui (somewhat)")
--[[	if game.players[PlayerIndex].gui.top["DyTechPowerFlow"] and game.players[PlayerIndex].gui.top["DyTechPowerFlow"].valid then
		game.players[PlayerIndex].gui.top["DyTechPowerFlow"].destroy()
		global.gui[player.name] = nil
	end]]
	
	if global.gui[player.name] then
		global.gui[player.name].destroy()
		global.gui[player.name] = nil
	end
end


--[[Reactor Code]]--

game.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "nuclear-reactor" then
	--Saving the coordinates of the placed entity
	global.entitycount = global.entitycount + 1
	datadump(global.entitycount, "global.entitycount")
	
	global.entitypos[global.entitycount] = {}
	global.entitypos[global.entitycount].TopLeftX = event.created_entity.position.x-2 --Left Top
	global.entitypos[global.entitycount].TopLeftY = event.created_entity.position.y+2
	global.entitypos[global.entitycount].TopRightX = event.created_entity.position.x+2 --Right Top
	global.entitypos[global.entitycount].TopRightY = event.created_entity.position.y+2

	global.entitypos[global.entitycount].BottomLeftX = event.created_entity.position.x-2  --Left Bottom
	global.entitypos[global.entitycount].BottomLeftY = event.created_entity.position.y-2
	global.entitypos[global.entitycount].BottomRightX = event.created_entity.position.x+2 --Right Bottom
	global.entitypos[global.entitycount].BottomRightY = event.created_entity.position.y-2
	
	global.entitypos[global.entitycount].ContainerX = event.created_entity.position.x-3
	global.entitypos[global.entitycount].ContainerY = event.created_entity.position.y
	
	
		global.entityinfo[global.entitycount] = {}
		global.entityinfo[global.entitycount].ContainerEntity = {}
		global.entityinfo[global.entitycount].ReactorEntity = {}
		global.entityinfo[global.entitycount].ReactorEntity = event.created_entity
--		datadump(global.entityinfo[global.entitycount].ReactorEntity, "global.entityinfo[global.entitycount].ReactorEntity")
--		debug(global.entityinfo[global.entitycount].ReactorEntity.name)
--		event.created_entity.operable = false
		
		if (game.can_place_entity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}}) then
			game.create_entity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, force=game.forces.player}
--			global.entityinfo[global.entitycount].ContainerEntity = surface.find_entities_filtered{area = {{global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}}, name = "nuclear-reactor-container"}
			local newReactor = game.create_entity{name = "nuclear-reactor-container", position = {global.entitypos[global.entitycount].ContainerX, global.entitypos[global.entitycount].ContainerY}, force=game.forces.player}
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
	if event.created_entity.name == "nuclear-dynamo" then
	
	global.dynamoentitycount = global.dynamoentitycount + 1
	
	global.entitypos2[global.dynamoentitycount] = {}
	global.entitypos2[global.dynamoentitycount].TopLeftX = event.created_entity.position.x-1 --Left Top
	global.entitypos2[global.dynamoentitycount].TopLeftY = event.created_entity.position.y+3
	global.entitypos2[global.dynamoentitycount].TopRightX = event.created_entity.position.x+1 --Right Top
	global.entitypos2[global.dynamoentitycount].TopRightY = event.created_entity.position.y+3

	global.entitypos2[global.dynamoentitycount].BottomLeftX = event.created_entity.position.x-1  --Left Bottom
	global.entitypos2[global.dynamoentitycount].BottomLeftY = event.created_entity.position.y-3
	global.entitypos2[global.dynamoentitycount].BottomRightX = event.created_entity.position.x+1 --Right Bottom
	global.entitypos2[global.dynamoentitycount].BottomRightY = event.created_entity.position.y-3

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
--Steam Engine code:

for player_Index, player in ipairs(game.players) do
	if global.nearbyEngines and not global.nearEngines.valid then
		--CloseGUI(player)
		debug("CloseGUI")
	end
	if global.tick[2] == 300 then
			debug("CheckPlayerIsNearEngine")
		CheckPlayerIsNearEngine(player)
		global.tick[2] = 0
	else
		global.tick[2] = global.tick[2] + 1
	end
end

--Nuclear reactor code:

if debug_master and Nuclear_Reactors then
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
elseif Nuclear_Reactors then
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
if event.item_stack.name == "nuclear-reactor" then
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

remote.add_interface("DyTech-Power",
{  	
	
})
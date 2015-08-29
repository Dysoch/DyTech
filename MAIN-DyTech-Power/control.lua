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
debug_master = false -- Master switch for debugging, shows most things!

function debug(str, statement)
	if debug_master then
		PlayerPrint(str)
	end
	if log_everything then log(str, statement) end
end
log_everything = true -- keep this true all times! only disable if the game lags. the info it generates is needed by the DyTech Team to debug your savegame if an bug or error happens!
function log(str, statement)
local seconds = math.floor(game.tick/60)
local minutes = math.floor(seconds/60)
local hours = math.floor(minutes/60)
	if not global.Log then global.Log = {} end
	if not statement then
		global.Log[hours..":"..(minutes-(hours*60))..":"..(seconds-(minutes*60))] = str
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
game.on_load(function()
if not global.tick then global.tick = {} end
if not global.tick[1] then global.tick[1] = 0 end
if not global.tick[2] then global.tick[2] = 0 end
if not global.usedFuel then global.usedFuel = {} end
if not global.usedFuel.EntityContents then global.usedFuel.EntityContents = {} end
if not global.entitypos then global.entitypos = {} end
if not global.entityinfo then global.entityinfo = {} end
if not global.entitycount then global.entitycount = 0 end
if not global.dynamoentitycount then global.dynamoentitycount = 0 end
if not global.entitypos2 then global.entitypos2 = {} end
if not global.itemcount then global.itemcount = {} end
if not global.item then global.item = {} end

if not global.fuel then global.fuel = {} end
if not global.fuel then global.fuel[1] = "u-235-3-0" end
if not global.fuel then global.fuel[2] = "u-235-3-5" end
if not global.fuel then global.fuel[3] = "u-235-4-0" end
if not global.fuel then global.fuel[4] = "u-235-4-5" end
if not global.fuel then global.fuel[5] = "u-235-5-0" end

if not global.nearbySteamEngines then global.nearbySteamEngines = {} end
if not global.guiactivationdistance then global.guiactivationdistance = 1 end
if not global.gui_activation_distance then global.gui_activation_distance = 1 end
if not global.nearby_engine then global.nearby_engine = {} end
if not global.nearEngines then global.nearEngines = {} end
if not global.gui then global.gui = {} end
if not global.prioritycheck then global.prioritycheck = false end
if not global.temp then global.temp = {} end
if not global.temp.nearEngines then global.temp.nearEngines = {} end
if not global.temp.nearEngines.primary then global.temp.nearEngines.primary = {} end
if not global.temp.nearEngines.secondary then global.temp.nearEngines.secondary = {} end
if not global.temp.nearEngines.terciary then global.temp.nearEngines.terciary = {} end
if not global.isEngine then global.isEngine = {} end
if not global.isEngine.primary then global.isEngine.primary = {} end
if not global.isEngine.secondary then global.isEngine.secondary = {} end
if not global.isEngine.terciary then global.isEngine.terciary = {} end
if not global.isEngine.primary then global.isEngine.primary = false end
if not global.isEngine.secondary then global.isEngine.secondary = false end
if not global.isEngine.terciary then global.isEngine.terciary = false end
if not global.steamMk then global.steamMk = {} end

if not global.steam then
	global.steam = {}
	global.steam[1] = {}
	global.steam[2] = {}
	global.steam[3] = {}
	global.steam[4] = {}
	global.steam[5] = {}
	global.steam[1].primary = {}
	global.steam[1].secondary = {}
	global.steam[1].terciary = {}
	global.steam[2].primary = {}
	global.steam[2].secondary = {}
	global.steam[2].terciary = {}
	global.steam[3].primary = {}
	global.steam[3].secondary = {}
	global.steam[3].terciary = {}
	global.steam[4].primary = {}
	global.steam[4].secondary = {}
	global.steam[4].terciary = {}
	global.steam[5].primary = {}
	global.steam[5].secondary = {}
	global.steam[5].terciary = {}

	global.steam[1].primary = "steam-engine-primary"
	global.steam[1].secondary = "steam-engine"
	global.steam[1].terciary = "steam-engine-terciary"
	global.steam[2].primary = "steam-engine-primary-mk2"
	global.steam[2].secondary = "steam-engine-secondary-mk2"
	global.steam[2].terciary = "steam-engine-terciary-mk2"
	global.steam[3].primary = "steam-engine-primary-mk3"
	global.steam[3].secondary = "steam-engine-secondary-mk3"
	global.steam[3].terciary = "steam-engine-terciary-mk3"
	global.steam[4].primary = "steam-engine-primary-mk4"
	global.steam[4].secondary = "steam-engine-secondary-mk4"
	global.steam[4].terciary = "steam-engine-terciary-mk4"
	global.steam[5].primary = "steam-engine-primary-mk5"
	global.steam[5].secondary = "steam-engine-secondary-mk5"
	global.steam[5].terciary = "steam-engine-terciary-mk5"
end
end)

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
global.temp = {}
global.temp.nearEngines = {}
global.temp.nearEngines.primary = {}
global.temp.nearEngines.secondary = {}
global.temp.nearEngines.terciary = {}
global.isEngine = {}
global.isEngine.primary = {}
global.isEngine.secondary = {}
global.isEngine.terciary = {}
global.isEngine.primary = false
global.isEngine.secondary = false
global.isEngine.terciary = false
global.steamMk = {}

global.steam = {}
global.steam[1] = {}
global.steam[2] = {}
global.steam[3] = {}
global.steam[4] = {}
global.steam[5] = {}
global.steam[1].primary = {}
global.steam[1].secondary = {}
global.steam[1].terciary = {}
global.steam[2].primary = {}
global.steam[2].secondary = {}
global.steam[2].terciary = {}
global.steam[3].primary = {}
global.steam[3].secondary = {}
global.steam[3].terciary = {}
global.steam[4].primary = {}
global.steam[4].secondary = {}
global.steam[4].terciary = {}
global.steam[5].primary = {}
global.steam[5].secondary = {}
global.steam[5].terciary = {}

global.steam[1].primary = "steam-engine-primary"
global.steam[1].secondary = "steam-engine"
global.steam[1].terciary = "steam-engine-terciary"
global.steam[2].primary = "steam-engine-primary-mk2"
global.steam[2].secondary = "steam-engine-secondary-mk2"
global.steam[2].terciary = "steam-engine-terciary-mk2"
global.steam[3].primary = "steam-engine-primary-mk3"
global.steam[3].secondary = "steam-engine-secondary-mk3"
global.steam[3].terciary = "steam-engine-terciary-mk3"
global.steam[4].primary = "steam-engine-primary-mk4"
global.steam[4].secondary = "steam-engine-secondary-mk4"
global.steam[4].terciary = "steam-engine-terciary-mk4"
global.steam[5].primary = "steam-engine-primary-mk5"
global.steam[5].secondary = "steam-engine-secondary-mk5"
global.steam[5].terciary = "steam-engine-terciary-mk5"

global.steam[6].primary = "high-steam-engine-primary"
global.steam[6].secondary = "high-steam-engine-secondary"
global.steam[6].terciary = "high-steam-engine-terciary"
global.steam[7].primary = "high-steam-engine-primary-mk2"
global.steam[7].secondary = "high-steam-engine-secondary-mk2"
global.steam[7].terciary = "high-steam-engine-terciary-mk2"
global.steam[8].primary = "high-steam-engine-primary-mk3"
global.steam[8].secondary = "high-steam-engine-secondary-mk3"
global.steam[8].terciary = "high-steam-engine-terciary-mk3"
global.steam[9].primary = "high-steam-engine-primary-mk4"
global.steam[9].secondary = "high-steam-engine-secondary-mk4"
global.steam[9].terciary = "high-steam-engine-terciary-mk4"
global.steam[10].primary = "high-steam-engine-primary-mk5"
global.steam[10].secondary = "high-steam-engine-secondary-mk5"
global.steam[10].terciary = "high-steam-engine-terciary-mk5"
end)

--[[Steam Engine Code]]--

game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	debug("Event fired!")
    if event.element.name == "DyTech-Power-Button" then
        remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
 --       GUI.PushParent(player.gui.left)
		if not global.dytechpowergui then global.dytechpowergui = {} end
--		global.dytechpowergui[player.name] = GUI.PushParent(GUI.Frame("dytech-power-gui", "Dytech Power GUI", GUI.VERTICAL))
--		GUI.PushParent(GUI.Flow("main_buttons", GUI.VERTICAL))
--		local checkbox = GUI.Checkbox("Switch Priority", priorityswitch)
--		local bbutton = GUI.Button("Back", backbutton)

		player.gui.top.add({type="flow", direction="vertical", name="DyTechPowerFlow"})
		player.gui.top["DyTechPowerFlow"].add({type="frame", direction="vertical", name="dytechpowergui", caption={"dytech-power-gui"}})
		adder = player.gui.top["DyTechPowerFlow"]["dytechpowergui"]
		
		global.priorityswitchbox = adder.add{type = "checkbox", caption = "Dytech Power Priority Switch Switch", name = "priorityswitch", state = false}
		global.bbutton = adder.add{type = "button", caption = "Back", name = "backbutton"}
		
	elseif event.element.name == "priorityswitch" then
		if event.element.state == true then
			global.prioritycheck = true
			debug("proritycheck is true")
		elseif event.element.state == false then
			global.prioritycheck = false
			debug("prioritycheck is false")
		else
			debug("nope. Just nope. No prioritycheck for you")
		end
	elseif event.element.name == "backbutton" then
		player.gui.top["DyTechPowerFlow"].destroy()
		remote.call("DyTech-Core", "OpenMainGUI", playerIndex)
	
	elseif (event.element.name == "primary") then
		--do primary stuff
		debug("You clicked: Primary")
		global.secondarybox.state = false
		global.terciarybox.state = false
		
		if global.isEngine.primary then
			global.primarybox.state = true
			debug("what u doing? I'm already activated!")
			
		elseif global.isEngine.secondary then
			local pos = global.temp.nearEngines.secondary.position
			local name = global.temp.nearEngines.secondary.name
			local dir = global.temp.nearEngines.secondary.direction
			global.temp.nearEngines.secondary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].secondary then
					debug("found it: "..global.steam[i].secondary)
					global.steamMk = i
					game.makefile("DataDump/igottis.txt", "igottis, "..global.steamMk)
					break
				else
					debug("nope, "..global.steam[i].secondary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].primary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
			
		elseif global.isEngine.terciary then
			local pos = global.temp.nearEngines.terciary.position
			local name = global.temp.nearEngines.terciary.name
			local dir = global.temp.nearEngines.terciary.direction
			global.temp.nearEngines.terciary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].terciary then
					debug("found it: "..global.steam[i].terciary)
					global.steamMk = i
					break
				else
					debug("nope, "..global.steam[i].terciary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].primary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
		else
			debug("I have no fucking idea")
		end
	elseif event.element.name == "secondary" then
		--do secondary stuff
		debug("You clicked: Secondary")
		global.primarybox.state = false
		global.terciarybox.state = false
		
		if global.isEngine.secondary then
			global.primarybox.state = true
			debug("what u doing? I'm already activated!")
			
		elseif global.isEngine.primary then
			local pos = global.temp.nearEngines.primary.position
			local name = global.temp.nearEngines.primary.name
			local dir = global.temp.nearEngines.primary.direction
			global.temp.nearEngines.primary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].primary then
					debug("found it: "..global.steam[i].primary)
					global.steamMk = i
					game.makefile("DataDump/igottis.txt", "igottis, "..global.steamMk)
					break
				else
					debug("nope, "..global.steam[i].primary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].secondary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
			
		elseif global.isEngine.terciary then
			local pos = global.temp.nearEngines.terciary.position
			local name = global.temp.nearEngines.terciary.name
			local dir = global.temp.nearEngines.terciary.direction
			global.temp.nearEngines.terciary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].terciary then
					debug("found it: "..global.steam[i].terciary)
					global.steamMk = i
					break
				else
					debug("nope, "..global.steam[i].terciary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].secondary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
		else
			debug("I have no fucking idea 2.0")
		end
		
	elseif event.element.name == "terciary" then
		--do terciary stuff
		debug("You clicked: Teritary")
		global.primarybox.state = false
		global.secondarybox.state = false
		
		if global.isEngine.terciary then
			global.primarybox.state = true
			debug("what u doing? I'm already activated!")
		
		elseif global.isEngine.primary then
			local pos = global.temp.nearEngines.primary.position
			local name = global.temp.nearEngines.primary.name
			local dir = global.temp.nearEngines.primary.direction
			global.temp.nearEngines.primary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].primary then
					debug("found it: "..global.steam[i].primary)
					global.steamMk = i
					break
				else
					debug("nope, "..global.steam[i].primary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].terciary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
		
		elseif global.isEngine.secondary then
			local pos = global.temp.nearEngines.secondary.position
			local name = global.temp.nearEngines.secondary.name
			local dir = global.temp.nearEngines.secondary.direction
			global.temp.nearEngines.secondary.destroy()
			
			for i in pairs(global.steam) do
				if name == global.steam[i].secondary then
					debug("found it: "..global.steam[i].secondary)
					global.steamMk = i
					game.makefile("DataDump/igottis.txt", "igottis, "..global.steamMk)
					break
				else
					debug("nope, "..global.steam[i].secondary)
				end
			end
			
			game.get_surface(1).create_entity{name = global.steam[global.steamMk].terciary, position = pos, force=game.player.force, direction = dir}
			CloseGUI(player)
			ResetEngines(player)
		else
			debug("I have no fucking idea 3.0")
		end
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
			global.temp.nearEngines.primary = global.nearEngines.primary[1]
			global.isEngine = {}
			global.isEngine.primary = true
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
			global.temp.nearEngines.secondary = global.nearEngines.secondary[1]
			global.isEngine = {}
			global.isEngine.secondary = true
			if not global.gui[player.name] then 
				OpenGUI(player, "secondary")
				--global.gui[player.name] = true
				debug("Opening GUI, secondary")
			else
				debug("nope, no global.gui for you!")
			end
		end

		--terciary engine
		local searchArea3 = SquareArea(player.position, global.gui_activation_distance)
		global.nearEngines.terciary = player.surface.find_entities_filtered{area = searchArea3, name = global.steam[i].terciary}
		if #global.nearEngines.terciary > 0 then
			global.nearby_engine[player.name] = global.nearEngines.terciary[1]
			global.temp.nearEngines.terciary = global.nearEngines.terciary[1]
			global.isEngine = {}
			global.isEngine.terciary = true
			if not global.gui[player.name] then 
				OpenGUI(player, "terciary")
				--global.gui[player.name] = true
				debug("Opening GUI, terciary")
			else
				debug("nope, no global.gui for you!")
			end
		end
	end

end
end


function OpenGUI(player, output)

	player.gui.top.add({type="flow", direction="vertical", name="DyTechPowerSteamFlow"})
	player.gui.top["DyTechPowerSteamFlow"].add({type="frame", direction="vertical", name="steamengine_gui", caption={"steamengine-gui"}})
	steamadder = player.gui.top["DyTechPowerSteamFlow"]["steamengine_gui"]
	global.gui[player.name] = true
	
--[[	GUI.PushParent(player.gui.left)
	global.gui[player.name] = GUI.PushParent(GUI.Frame("steamengine_gui", "Steam Engine Control", GUI.VERTICAL))
	GUI.PushParent(GUI.Flow("main_buttons", GUI.VERTICAL))
	global.primarybox = GUI.Checkbox("Primary", primarytoggle)
	global.secondarybox = GUI.Checkbox("Secondary", secondarytoggle)
	global.terciarybox = GUI.Checkbox("terciary", terciarytoggle)]]

	global.primarybox = steamadder.add{type = "checkbox", caption = "Primary", name = "primary", state = false}
	global.secondarybox = steamadder.add{type = "checkbox", caption = "Secondary", name = "secondary", state = false}
	global.terciarybox = steamadder.add{type = "checkbox", caption = "terciary", name = "terciary", state = false}
	
	if output == "primary" then
		global.primarybox.state = true
	elseif output == "secondary" then
		global.secondarybox.state = true
	elseif output == "terciary" then
		global.terciarybox.state = true
	else
		return
	end
	GUI.PopAll()
end

function CloseGUI(player)
	debug("closed the gui (somewhat)")
--	if game.players[PlayerIndex].gui.top["DyTechPowerFlow"].valid then
--		game.players[PlayerIndex].gui.top["DyTechPowerFlow"].destroy()
		player.gui.top["DyTechPowerSteamFlow"].destroy()
		global.gui[player.name] = nil
--	end
	
--[[	if global.gui[player.name] then
		global.gui[player.name].destroy()
		global.gui[player.name] = nil
	end]]
end

function ResetEngines(player)
global.isEngine.primary = false
global.isEngine.secondary = false
global.isEngine.terciary = false
global.steamMk = nil
global.nearEngines.primary = nil
global.nearEngines.secondary = nil
global.nearEngines.terciary = nil
global.temp.nearEngines.primary = nil
global.temp.nearEngines.secondary = nil
global.temp.nearEngines.terciary = nil
global.nearby_engine[player.name] = nil
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
if global.prioritycheck --[[or global.fckyouimenabelingthisanyway]] then
	for player_Index, player in ipairs(game.players) do
		if global.tick[2] == 30 then
			debug("CheckPlayerIsNearEngine", true)
			CheckPlayerIsNearEngine(player)
			global.tick[2] = 0
		else
			global.tick[2] = global.tick[2] + 1
		end
	end
else
	debug("prioritycheck is false", true)
	for player_Index, player in ipairs(game.players) do
		if global.gui[player.name] then
			CloseGUI(player)
		else
			debug("no gui available for "..player.name, true)
		end
	end
end

--Nuclear reactor code:

if debug_master and Config.Nuclear_Reactors then
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
elseif Config.Nuclear_Reactors then
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
	DataDump = function()
		game.makefile("DyTech/Log/Power.txt", serpent.block(global.Log))
		game.makefile("DyTech/Config/Power.txt", serpent.block(Config))
	end		
})
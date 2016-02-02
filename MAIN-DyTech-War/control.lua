require "defines"
require "config"
require "scripts/dyzilla"


--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
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

function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

script.on_init(function()
	game.create_force("dyzilla")
	Dyzilla.Startup()
end)

script.on_load(function()

end)

script.on_event(defines.events.on_tick, function(event)
	if Config.Dyzilla_Spawner and Config.Dyzilla_Spawner_Supplies then
		if not global.Dyzilla.Supplies then
			if Config.Difficulty==5 or Config.Difficulty==6 then
				debug("Dyzilla: active and difficulty at 5 or 6")
				PlayerPrint({"msg-dyzilla-death-mode"})
				Dyzilla.DeathModeSupplies()
				debug("Dyzilla: Supplies given")
			end
		end
	end
end)

script.on_event(defines.events.on_entity_died, function(event)
	if event.entity.name=="dyzilla-spawner" then
		global.Dyzilla.Dead = global.Dyzilla.Dead + 1
		global.Dyzilla.Alive = global.Dyzilla.Alive - 1
		debug("Dyzilla: Killed 1 spawner. Next one can spawn")
	end
end)

script.on_event(defines.events.on_chunk_generated, function(event)
	if Config.Dyzilla_Spawner then
	if not global.Dyzilla then Dyzilla.Startup() end
	global.Dyzilla.Chunks = global.Dyzilla.Chunks + 1
		if Config.Difficulty==1 then 
			Dyzilla.Easy(event)
		elseif Config.Difficulty==2 then 
			Dyzilla.Medium(event)
		elseif Config.Difficulty==3 then 
			Dyzilla.Hard(event)
		elseif Config.Difficulty==4 then 
			Dyzilla.Insane(event)
		elseif Config.Difficulty==5 then 
			Dyzilla.Extreme(event)
		elseif Config.Difficulty==6 then 
			Dyzilla.Hell(event) 
		end
	end
end)

remote.add_interface("DyTech-War",
{  	
	DataDump = function()
		game.makefile("DyTech/DataDump/Dyzilla.txt", serpent.block(global.Dyzilla))
		game.makefile("DyTech/Log/War.txt", serpent.block(global.Log))
		game.makefile("DyTech/Config/War.txt", serpent.block(Config))
	end,
})
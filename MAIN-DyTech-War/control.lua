require "defines"
require "config"
require "scripts/dyzilla"


--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on

function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
	if log_everything then log(str) end
end
log_everything = true
function log(str)
local seconds = math.floor(game.tick/60)
local minutes = math.floor(seconds/60)
local hours = math.floor(minutes/60)
	if not global.Log then global.Log = {} end
	global.Log[hours..":"..minutes..":"..(seconds-(minutes*60))] = str
end

function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

game.on_init(function()
	if Config.Dyzilla_Spawner then
		Dyzilla.Startup()
		debug("Dyzilla: started up")
	end
end)

game.on_save(function()

end)

game.on_load(function()

end)

game.on_event(defines.events.on_tick, function(event)
	if not global.Dyzilla.Supplies then
		if Config.Difficulty==5 then
			debug("Dyzilla: active and difficulty at 5")
			PlayerPrint({"msg-dyzilla-death-mode"})
			Dyzilla.DeathModeSupplies()
			debug("Dyzilla: Supplies given")
		end
	end
end)

game.on_event(defines.events.on_entity_died, function(event)
	if event.entity.name=="dyzilla-spawner" then
		global.Dyzilla.Dead = global.Dyzilla.Dead + 1
		global.Dyzilla.Alive = global.Dyzilla.Alive - 1
		debug("Dyzilla: Killed 1 spawner. Next one can spawn")
	end
end)

game.on_event(defines.events.on_chunk_generated, function(event)
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
		end
	end
end)

remote.add_interface("DyTech-War",
{  	
	DataDump = function()
		game.makefile("DataDump/Dyzilla.txt", serpent.block(global.Dyzilla))
		game.makefile("Log/War.txt", serpent.block(global.Log))
		global.Config = Config
		game.makefile("Config/War.txt", serpent.block(global.Config))
		global.Config = {}
	end,
})
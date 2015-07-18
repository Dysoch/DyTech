require "defines"
require "config"
require "scripts/dyzilla"


--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on

function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end
function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

game.on_init(function()
	Dyzilla.Startup()
end)

game.on_save(function()

end)

game.on_load(function()

end)

game.on_event(defines.events.on_tick, function(event)

end)

game.on_event(defines.events.on_entity_died, function(event)
	if event.entity.name=="dyzilla-spawner" then
		global.Dyzilla.Dead = global.Dyzilla.Dead + 1
		global.Dyzilla.Alive = global.Dyzilla.Alive - 1
	end
end)

game.on_event(defines.events.on_chunk_generated, function(event)
	if Dyzilla_Spawner then
	global.Dyzilla.Chunks = global.Dyzilla.Chunks + 1
		if Difficulty==1 then 
			Dyzilla.Easy(event)
		elseif Difficulty==2 then 
			Dyzilla.Medium(event)
		elseif Difficulty==3 then 
			Dyzilla.Hard(event)
		elseif Difficulty==4 then 
			Dyzilla.Insane(event)
		elseif Difficulty==5 then 
			Dyzilla.Extreme(event) 
		end
	end
end)

remote.add_interface("DyTech-War",
{  	
	DataDump = function()
		game.make_file("DataDump/Dyzilla.txt", serpent.block(global.Dyzilla))
	end,
})
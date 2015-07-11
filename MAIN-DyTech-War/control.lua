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

game.oninit(function()
	Dyzilla.Startup()
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)

end)

game.onevent(defines.events.onentitydied, function(event)
	if event.entity.name=="dyzilla-spawner" then
		glob.Dyzilla.Dead = glob.Dyzilla.Dead + 1
		glob.Dyzilla.Alive = glob.Dyzilla.Alive - 1
	end
end)

game.onevent(defines.events.onchunkgenerated, function(event)
	if Dyzilla_Spawner then
	glob.Dyzilla.Chunks = glob.Dyzilla.Chunks + 1
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

remote.addinterface("DyTech-War",
{  	
	DataDump = function()
		game.makefile("DataDump/Dyzilla.txt", serpent.block(glob.Dyzilla))
	end,
})
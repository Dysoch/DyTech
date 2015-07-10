require "defines"
require "scripts/dyzilla"


--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
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

game.onevent(defines.events.onchunkgenerated, function(event)
	if Dyzilla_Spawner then
		if Difficulty==1 then Dyzilla.Easy()
		elseif Difficulty==2 then Dyzilla.Medium()
		elseif Difficulty==3 then Dyzilla.Hard()
		elseif Difficulty==4 then Dyzilla.Insane()
		elseif Difficulty==5 then Dyzilla.Extreme() end
	end
end)

remote.addinterface("DyTech-War",
{  
	ResetAll = function()
		for _,player in pairs(game.players) do
			player.force.resetrecipes()
			player.force.resettechnologies()
		end
	end
})
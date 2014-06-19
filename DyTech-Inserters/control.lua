require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.inserters=false then glob.dytech.inserters=true end
end)

remote.addinterface("DyTech-Inserters",

})
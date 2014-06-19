require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.storage=false then glob.dytech.storage=true end
end)

remote.addinterface("DyTech-Storage",

})
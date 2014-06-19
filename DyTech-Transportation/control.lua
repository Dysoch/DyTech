require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.transportation=false then glob.dytech.transportation=true end
end)

remote.addinterface("DyTech-Transportation",

})
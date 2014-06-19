require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.dynamic=false then glob.dytech.dynamic=true end
end)

remote.addinterface("DyTech-Dynamic",

})
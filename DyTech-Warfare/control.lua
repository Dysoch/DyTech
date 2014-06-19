require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.warfare=false then glob.dytech.warfare=true end
end)

remote.addinterface("DyTech-Warfare",

})
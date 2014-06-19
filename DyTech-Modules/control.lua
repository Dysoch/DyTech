require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.modules=false then glob.dytech.modules=true end
end)

remote.addinterface("DyTech-Modules",

})
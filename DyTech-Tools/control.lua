require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.tools=false then glob.dytech.tools=true end
end)

remote.addinterface("DyTech-Tools",

})
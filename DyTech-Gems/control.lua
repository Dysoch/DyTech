require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.gems=false then glob.dytech.gems=true end
end)

remote.addinterface("DyTech-Gems",

})
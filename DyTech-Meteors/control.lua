require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.meteors==false then glob.dytech.meteors=true end
end)

remote.addinterface("DyTech-Meteors",
	{

})

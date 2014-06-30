require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.compatibility==false then glob.dytech.compatibility=true end
end)

remote.addinterface("DyTech-Compatibility",
	{

})

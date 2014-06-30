require "defines"

game.oninit(function()
	
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	if glob.dytech.metallurgy==false then glob.dytech.metallurgy=true end
end)

remote.addinterface("DyTech-Metallurgy",
	{

})

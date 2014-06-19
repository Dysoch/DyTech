require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "tools")
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)

end)

remote.addinterface("DyTech-Tools",
{

})
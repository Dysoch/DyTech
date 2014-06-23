require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "storage")
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)

end)

game.onevent(defines.events.onbuiltentity, function(event)

end)


remote.addinterface("DyTech-Storage",
{

})
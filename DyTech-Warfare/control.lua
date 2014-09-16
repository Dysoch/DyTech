require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "warfare")
end)

remote.addinterface("DyTech-Warfare",
{

})
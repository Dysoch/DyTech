require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "automation")
end)

remote.addinterface("DyTech-Automation",
{

})
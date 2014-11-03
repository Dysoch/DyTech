require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "modules")
end)

remote.addinterface("DyTech-Modules",
{

})
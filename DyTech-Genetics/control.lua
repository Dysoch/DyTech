require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "genetics")
end)

remote.addinterface("DyTech-Genetics",
{

})
require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "logistic")
end)

remote.addinterface("DyTech-Logistic",
{

})
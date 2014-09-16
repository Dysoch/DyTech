require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "transportation")	
end)

remote.addinterface("DyTech-Transportation",
{

})
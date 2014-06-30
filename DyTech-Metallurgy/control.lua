require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "metallurgy")
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)

end)

remote.addinterface("DyTech-Metallurgy",
{
  Regenerate = function()
	game.regenerateentity("sand")
	game.regenerateentity("lava-600")
  end
})
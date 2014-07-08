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
  RegenerateOres = function()
	game.regenerateentity("sand")
	game.regenerateentity("gold-ore")
	game.regenerateentity("lead-ore")
	game.regenerateentity("tungsten-ore")
	game.regenerateentity("silver-ore")
	game.regenerateentity("tin-ore")
	game.regenerateentity("zinc-ore")
  end,
  
  RegenerateFluids = function()
	game.regenerateentity("lava-600")
	game.regenerateentity("lava-1400")
	game.regenerateentity("lava-2800")
  end
})
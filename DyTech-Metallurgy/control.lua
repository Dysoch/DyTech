require "defines"

--[[F-mod Compatibility]]--
if remote.interfaces["F-mod"] then
  remote.call("F-mod", "addumdresource", "sand", 10)
  remote.call("F-mod", "addumdresource", "zinc-ore", 2)
  remote.call("F-mod", "addumdresource", "lead-ore", 2)
  remote.call("F-mod", "addumdresource", "tungsten-ore", 2)
  remote.call("F-mod", "addumdresource", "tin-ore", 2)
end

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "metallurgy")
	game.player.print("Do not worry if you see an Written error here. This is for migrations, and it means F-mod is not installed")
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
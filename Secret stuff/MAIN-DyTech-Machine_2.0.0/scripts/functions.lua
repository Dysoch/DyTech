module("Functions", package.seeall)

function TestMetallurgy(index)
  local players = game.players[index]
  players.insert{name="coal", count=1000}
  players.insert{name="iron-ore", count=50}
  players.insert{name="copper-ore", count=50}
  players.insert{name="steel-chest", count=50}
  players.insert{name="small-electric-pole", count=50}
  players.insert{name="fast-inserter", count=50}
  players.insert{name="smart-inserter", count=50}
  players.insert{name="solar-panel", count=50}
  players.insert{name="basic-accumulator", count=50}
  players.insert{name="basic-transport-belt", count=50}
  players.insert{name="basic-transport-belt-to-ground", count=20}
  players.insert{name="basic-splitter", count=20}
  players.insert{name="geothermal-extractor", count=20}
  players.insert{name="forge", count=20}
  players.insert{name="blast-furnace", count=20}
  players.insert{name="lava-heater", count=20}
  players.insert{name="lava-cooler", count=20}
  players.insert{name="pipe", count=200}
  players.insert{name="pipe-to-ground", count=50}
  players.insert{name="mold-plate", count=50}
  players.insert{name="mold-wire", count=50}
  players.insert{name="mold-gear", count=50}
  players.insert{name="mold-circuit", count=50}
  players.insert{name="mold-ammo-basic", count=50}
  players.insert{name="mold-ammo-advanced", count=50}
  game.forces.player.technologies["lava-01"].researched = true
  game.forces.player.technologies["lava-02"].researched = true
  game.forces.player.technologies["lava-03"].researched = true
  game.forces.player.technologies["lava-04"].researched = true
--[[  game.forces.player.technologies["gold-processing"].researched = true
  game.forces.player.technologies["tin-processing"].researched = true
  game.forces.player.technologies["zinc-processing"].researched = true
  game.forces.player.technologies["silver-processing"].researched = true
  game.forces.player.technologies["lead-processing"].researched = true
  game.forces.player.technologies["tungsten-processing"].researched = true
  game.forces.player.technologies["cobalt-processing"].researched = true
  game.forces.player.technologies["ardite-processing"].researched = true
  game.forces.player.technologies["steel-processing"].researched = true]]
  game.forces.player.technologies["automation"].researched = true
  game.forces.player.technologies["frame-1"].researched = true
  game.forces.player.technologies["advanced-electronics"].researched = true
  game.forces.player.technologies["molds-01"].researched = true
  game.forces.player.technologies["molds-02"].researched = true
  game.forces.player.technologies["molds-03"].researched = true
  game.forces.player.technologies["molds-04"].researched = true
  game.forces.player.technologies["molds-05"].researched = true
  game.forces.player.technologies["water-cleaning"].researched = true
end
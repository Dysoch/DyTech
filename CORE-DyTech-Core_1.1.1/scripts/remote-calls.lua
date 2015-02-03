module("RemoteCalls", package.seeall)

function TestTrees(index)
  local players = game.players[index]
  players.insert{name="coal", count=1000}
  players.insert{name="steel-chest", count=50}
  players.insert{name="small-electric-pole", count=50}
  players.insert{name="fast-inserter", count=50}
  players.insert{name="smart-inserter", count=50}
  players.insert{name="solar-panel", count=50}
  players.insert{name="basic-accumulator", count=50}
  players.insert{name="basic-transport-belt", count=50}
  players.insert{name="basic-transport-belt-to-ground", count=20}
  players.insert{name="basic-splitter", count=20}
  players.insert{name="raw-wood", count=50}
  players.insert{name="rubber-seed", count=50}
  players.insert{name="sulfur-seed", count=50}
  players.insert{name="assembling-machine-3", count=50}
  game.forces.player.technologies["automation"].researched = true
  game.forces.player.technologies["automation-2"].researched = true
  game.forces.player.technologies["automation-3"].researched = true
end

function Regenerate(name)
	if name=="gold" then
		game.regenerateentity("gold-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="lead" then
		game.regenerateentity("lead-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="tungsten" then
		game.regenerateentity("tungsten-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="silver" then
		game.regenerateentity("silver-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="tin" then
		game.regenerateentity("tin-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="zinc" then
		game.regenerateentity("zinc-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="cobalt" then
		game.regenerateentity("cobalt-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="ardite" then
		game.regenerateentity("ardite-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="copper" then
		game.regenerateentity("copper-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="iron" then
		game.regenerateentity("iron-ore")
		PlayerPrint({"regenerate-"..name})
	elseif name=="stone" then
		game.regenerateentity("stone")
		PlayerPrint({"regenerate-"..name})
	elseif name=="coal" then
		game.regenerateentity("coal")
		PlayerPrint({"regenerate-"..name})
	elseif name=="lava" and remote.interfaces["DyTech-Machine"] then
		game.regenerateentity("lava-600")
		game.regenerateentity("lava-1400")
		game.regenerateentity("lava-2800")
		PlayerPrint({"regenerate-"..name})
	elseif name=="all" then
		game.regenerateentity("coal")
		game.regenerateentity("stone")
		game.regenerateentity("iron-ore")
		game.regenerateentity("copper-ore")
		game.regenerateentity("ardite-ore")
		game.regenerateentity("cobalt-ore")
		game.regenerateentity("zinc-ore")
		game.regenerateentity("tin-ore")
		game.regenerateentity("silver-ore")
		game.regenerateentity("tungsten-ore")
		game.regenerateentity("lead-ore")
		game.regenerateentity("gold-ore")
		if remote.interfaces["DyTech-Machine"] then
			game.regenerateentity("lava-600")
			game.regenerateentity("lava-1400")
			game.regenerateentity("lava-2800")
		end
		PlayerPrint({"regenerate-"..name})
	else
		PlayerPrint({"regenerate-not-exist"})
	end
end
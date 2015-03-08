module("TestFunctions", package.seeall)

function TestResearch(index)
  local players = game.players[index]
  players.insert{name="coal", count=200}
  players.insert{name="steel-chest", count=50}
  players.insert{name="small-electric-pole", count=50}
  players.insert{name="fast-inserter", count=50}
  players.insert{name="smart-inserter", count=50}
  players.insert{name="solar-panel", count=50}
  players.insert{name="basic-accumulator", count=50}
  players.insert{name="basic-transport-belt", count=50}
  players.insert{name="basic-transport-belt-to-ground", count=20}
  players.insert{name="basic-splitter", count=20}
  players.insert{name="science-pack-1", count=400}
  players.insert{name="science-pack-2", count=400}
  players.insert{name="science-pack-3", count=400}
  players.insert{name="alien-science-pack", count=400}
  players.insert{name="assembling-machine-3", count=50}
  players.insert{name="lab", count=10}
end


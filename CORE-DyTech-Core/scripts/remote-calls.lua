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
	for _,player in pairs(game.players) do
		player.force.resetrecipes()
		player.force.resettechnologies()
	end
end

function TestMapStart(index)
  local players = game.players[index]
  players.insert{name="construction-robot-2", count=50000}
  players.insert{name="logistic-robot-2", count=50000}
  players.insert{name="small-electric-pole", count=50}
  players.insert{name="fast-inserter", count=500}
  players.insert{name="smart-inserter", count=500}
  players.insert{name="solar-panel-primary-mk5", count=50}
  players.insert{name="basic-accumulator-mk6", count=50}
  players.insert{name="basic-transport-belt", count=5000}
  players.insert{name="basic-transport-belt-to-ground", count=2000}
  players.insert{name="basic-splitter", count=2000}
  players.insert{name="roboport-2", count=2000}
  players.insert{name="blueprint", count=1}
  players.insert{name="logistic-chest-requester", count=1000}
  players.insert{name="logistic-chest-passive-provider", count=1000}
  players.insert{name="logistic-chest-active-provider", count=1000}
  players.insert{name="logistic-chest-storage", count=1000}
  players.insert{name="deconstruction-planner", count=1}
  game.forces.player.currentresearch = "construction-robotics"
  game.forces.player.technologies["construction-robotics"].researched = true
  game.forces.player.currentresearch = "construction-robotics-1"
  game.forces.player.technologies["construction-robotics-1"].researched = true
  game.forces.player.currentresearch = "construction-robotics-2"
  game.forces.player.technologies["construction-robotics-2"].researched = true
	for _,player in pairs(game.players) do
		player.force.resetrecipes()
		player.force.resettechnologies()
	end
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

function CheckOreRatio(Amount)
		glob.Resources = {}
		glob.Resources.FoundTin = 0
		glob.Resources.FoundZinc = 0
		glob.Resources.FoundSilver = 0
		glob.Resources.FoundGold = 0
		glob.Resources.FoundLead = 0
		glob.Resources.FoundTungsten = 0
		glob.Resources.FoundCobalt = 0
		glob.Resources.FoundArdite = 0
		glob.Resources.AverageTin = 0
		glob.Resources.AverageZinc = 0
		glob.Resources.AverageSilver = 0
		glob.Resources.AverageGold = 0
		glob.Resources.AverageLead = 0
		glob.Resources.AverageTungsten = 0
		glob.Resources.AverageCobalt = 0
		glob.Resources.AverageArdite = 0
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "tin-ore"}) do
			if found then glob.Resources.FoundTin = glob.Resources.FoundTin + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "zinc-ore"}) do
			if found then glob.Resources.FoundZinc = glob.Resources.FoundZinc + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "silver-ore"}) do
			if found then glob.Resources.FoundSilver = glob.Resources.FoundSilver + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "gold-ore"}) do
			if found then glob.Resources.FoundGold = glob.Resources.FoundGold + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "lead-ore"}) do
			if found then glob.Resources.FoundLead = glob.Resources.FoundLead + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "tungsten-ore"}) do
			if found then glob.Resources.FoundTungsten = glob.Resources.FoundTungsten + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "cobalt-ore"}) do
			if found then glob.Resources.FoundCobalt = glob.Resources.FoundCobalt + 1 end
		end
		for found in pairs(game.findentitiesfiltered{area = {{-Amount, -Amount}, {Amount, Amount}}, name = "ardite-ore"}) do
			if found then glob.Resources.FoundArdite = glob.Resources.FoundArdite + 1 end
		end
		glob.Resources.AverageTin = (glob.Resources.FoundTin/glob.Logger.ChunkGenerated)
		glob.Resources.AverageZinc = (glob.Resources.FoundZinc/glob.Logger.ChunkGenerated)
		glob.Resources.AverageSilver = (glob.Resources.FoundSilver/glob.Logger.ChunkGenerated)
		glob.Resources.AverageGold = (glob.Resources.FoundGold/glob.Logger.ChunkGenerated)
		glob.Resources.AverageLead = (glob.Resources.FoundLead/glob.Logger.ChunkGenerated)
		glob.Resources.AverageTungsten = (glob.Resources.FoundTungsten/glob.Logger.ChunkGenerated)
		glob.Resources.AverageCobalt = (glob.Resources.FoundCobalt/glob.Logger.ChunkGenerated)
		glob.Resources.AverageArdite = (glob.Resources.FoundArdite/glob.Logger.ChunkGenerated)
		glob.Resources.Chunks = glob.Logger.ChunkGenerated
		game.makefile("Debug/Resources.txt", serpent.block(glob.Resources))
end
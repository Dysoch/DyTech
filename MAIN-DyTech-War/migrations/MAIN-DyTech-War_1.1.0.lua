for _,player in pairs(game.players) do
	player.force.resetrecipes()
	player.force.resettechnologies()
end

for index, force in pairs(game.forces) do
	if force.technologies["tungsten-processing"].researched then
		force.recipes["tungsten-wall-gate"].enabled = true
	end
end
game.player.force.resettechnologies()
game.player.force.resetrecipes()
game.reloadscript()

for index, force in pairs(game.forces) do
	if force.technologies["inserter-optimization-filter"].researched then
    force.recipes["long-handed-inserter-filter"].enabled = true
	end
	if force.technologies["electric-energy-accumulators-1"].researched then
    force.recipes["basic-accumulator-primary"].enabled = true
	force.recipes["basic-accumulator-secondary"].enabled = true
	end
	if force.technologies["solar-energy"].researched then
    force.recipes["solar-panel-secondary"].enabled = true
	force.recipes["solar-panel-terciary"].enabled = true
	end
	force.recipes["steam-engine-primary"].enabled = true
	force.recipes["steam-engine-terciary"].enabled = true
end
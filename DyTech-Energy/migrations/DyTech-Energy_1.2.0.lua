for index, force in pairs(game.forces) do
	if force.technologies["energy-1"].researched then
		force.recipes["steam-engine-primary-mk2"].enabled = true
		force.recipes["steam-engine-secondary-mk2"].enabled = true
		force.recipes["steam-engine-terciary-mk2"].enabled = true
	end
	if force.technologies["energy-2"].researched then
		force.recipes["steam-engine-primary-mk3"].enabled = true
		force.recipes["steam-engine-secondary-mk3"].enabled = true
		force.recipes["steam-engine-terciary-mk3"].enabled = true
	end
	if force.technologies["energy-3"].researched then
		force.recipes["steam-engine-primary-mk4"].enabled = true
		force.recipes["steam-engine-secondary-mk4"].enabled = true
		force.recipes["steam-engine-terciary-mk4"].enabled = true
	end
	if force.technologies["energy-4"].researched then
		force.recipes["steam-engine-primary-mk5"].enabled = true
		force.recipes["steam-engine-secondary-mk5"].enabled = true
		force.recipes["steam-engine-terciary-mk5"].enabled = true
	end
	if force.technologies["solar-energy"].researched then
		force.recipes["solar-panel-secondary"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
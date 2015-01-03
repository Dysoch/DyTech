for index, force in pairs(game.forces) do
	if force.technologies["lava-smelting-01"].researched then
		force.recipes["lava-800-cooling"].enabled = true
		force.recipes["lava-1000-cooling"].enabled = true
		force.recipes["lava-1200-cooling"].enabled = true
	end
	if force.technologies["lava-smelting-02"].researched then
		force.recipes["lava-1400-cooling"].enabled = true
		force.recipes["lava-1600-cooling"].enabled = true
	end
	if force.technologies["lava-smelting-03"].researched then
		force.recipes["lava-1800-cooling"].enabled = true
		force.recipes["lava-2000-cooling"].enabled = true
	end
	if force.technologies["lava-smelting-04"].researched then
		force.recipes["lava-2200-cooling"].enabled = true
		force.recipes["lava-2400-cooling"].enabled = true
	end
	if force.technologies["lava-smelting-05"].researched then
		force.recipes["lava-2600-cooling"].enabled = true
		force.recipes["lava-2800-cooling"].enabled = true
		force.recipes["lava-3000-cooling"].enabled = true
		force.recipes["lava-3200-cooling"].enabled = true
		force.recipes["lava-3400-cooling"].enabled = true
		force.recipes["lava-3600-cooling"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
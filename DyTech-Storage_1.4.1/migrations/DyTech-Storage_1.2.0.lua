for index, force in pairs(game.forces) do
	if force.technologies["logistics-3"].researched then
		force.recipes["compression-chest"].enabled = true
		force.recipes["compression-power-pole"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
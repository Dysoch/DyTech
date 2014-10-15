for index, force in pairs(game.forces) do
	if force.technologies["solar-energy"].researched then
		force.recipes["solar-panel-secondary"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
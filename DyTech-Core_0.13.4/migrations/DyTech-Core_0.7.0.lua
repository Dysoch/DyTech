for index, force in pairs(game.forces) do
	if force.technologies["steel-processing"].researched then
		force.recipes["steel-gear-wheel"].enabled = true
	end
	if force.technologies["automation"].researched then
		force.recipes["iron-gear-wheel"].enabled = true
	end
	if force.technologies["advanced-electronics-2"].researched then
		force.recipes["bundled-wire"].enabled = true
		force.recipes["advanced-processing-unit"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
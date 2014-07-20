for index, force in pairs(game.forces) do
	if force.technologies["chest-1"].researched then
		force.recipes["smart-chest-medium"].enabled = true
	end
	if force.technologies["chest-2"].researched then
		force.recipes["smart-chest-big"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
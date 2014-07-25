for index, force in pairs(game.forces) do
	if force.technologies["construction-robotics-1"].researched then
		force.recipes["repair-pack-2"].enabled = true
	end
	if force.technologies["construction-robotics-2"].researched then
		force.recipes["repair-pack-3"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
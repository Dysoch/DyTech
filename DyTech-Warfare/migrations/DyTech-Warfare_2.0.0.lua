for index, force in pairs(game.forces) do
	if force.technologies["military-3"].researched then
		force.recipes["basic-grenade-2"].enabled = true
	end
	if force.technologies["military-4"].researched then
		force.recipes["basic-grenade-3"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
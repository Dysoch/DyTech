for index, force in pairs(game.forces) do
	if force.technologies["tungsten-processing"].researched then
		force.recipes["tungsten-wall-gate"].enabled = true
	end
	if force.technologies["combat-robotics-4"].researched then
		force.recipes["marauder-turret-capsule"].enabled = true
	end
	if force.technologies["combat-robotics-5"].researched then
		force.recipes["sharpshooter-turret-capsule"].enabled = true
	end
	if force.technologies["combat-robotics-6"].researched then
		force.recipes["frenzy-turret-capsule"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.resetrecipes()
	player.force.resettechnologies()
end
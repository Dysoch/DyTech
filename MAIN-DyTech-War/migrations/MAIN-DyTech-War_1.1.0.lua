for _,player in pairs(game.players) do
	if player.force.technologies["tungsten-processing"].researched then
		player.force.recipes["tungsten-wall-gate"].enabled = true
	end
	if player.force.technologies["combat-robotics-4"].researched then
		player.force.recipes["marauder-turret-capsule"].enabled = true
	end
	if player.force.technologies["combat-robotics-5"].researched then
		player.force.recipes["sharpshooter-turret-capsule"].enabled = true
	end
	if player.force.technologies["combat-robotics-6"].researched then
		player.force.recipes["frenzy-turret-capsule"].enabled = true
		player.force.recipes["mixed-capsule"].enabled = true
		player.force.recipes["mixed-turret-capsule"].enabled = true
	end
	if player.force.technologies["military-3"].researched then
		player.force.recipes["poison-capsule-ammo-1"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.reset_recipes()
	player.force.reset_technologies()
end
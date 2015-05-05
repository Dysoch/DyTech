for _,player in pairs(game.players) do
	player.force.resetrecipes()
	player.force.resettechnologies()
end

for index, force in pairs(game.forces) do
	if force.technologies["boilers-1"].researched then
		force.recipes["high-boiler-mk2"].enabled = true
	end
	if force.technologies["boilers-2"].researched then
		force.recipes["high-boiler-mk3"].enabled = true
	end
	if force.technologies["boilers-3"].researched then
		force.recipes["high-boiler-mk4"].enabled = true
	end
	if force.technologies["boilers-4"].researched then
		force.recipes["high-boiler-mk5"].enabled = true
	end
end
for index, force in pairs(game.forces) do
	if force.technologies["logistic-system-1"].researched then
		force.recipes["robot-charger-1"].enabled = true
	end
	if force.technologies["logistic-system-2"].researched then
		force.recipes["robot-charger-2"].enabled = true
	end
	if force.technologies["logistic-system"].researched then
		force.recipes["logistic-chest-storage-one"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.resetrecipes()
	player.force.resettechnologies()
end
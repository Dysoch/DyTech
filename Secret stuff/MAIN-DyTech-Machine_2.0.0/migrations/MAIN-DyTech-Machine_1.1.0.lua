for _,player in pairs(game.players) do
	if player.force.technologies["logistic-system-1"].researched then
		player.force.recipes["robot-charger-1"].enabled = true
	end
	if player.force.technologies["logistic-system-2"].researched then
		player.force.recipes["robot-charger-2"].enabled = true
	end
	if player.force.technologies["logistic-system"].researched then
		player.force.recipes["logistic-chest-storage-one"].enabled = true
	end
	if player.force.technologies["logistics-2"].researched then
		player.force.recipes["pipe-mk2"].enabled = true
		player.force.recipes["pipe-to-ground-mk2"].enabled = true
	end
	if player.force.technologies["logistics-3"].researched then
		player.force.recipes["pipe-mk3"].enabled = true
		player.force.recipes["pipe-to-ground-mk3"].enabled = true
	end
	if player.force.technologies["lava-01"].researched then
		player.force.recipes["lava-heater-electric"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.reset_recipes()
	player.force.reset_technologies()
end
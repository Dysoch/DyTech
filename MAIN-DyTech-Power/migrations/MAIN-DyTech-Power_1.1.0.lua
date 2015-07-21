for _,player in pairs(game.players) do
	if player.force.technologies["boilers-1"].researched then
		player.force.recipes["high-boiler-mk2"].enabled = true
	end
	if player.force.technologies["boilers-2"].researched then
		player.force.recipes["high-boiler-mk3"].enabled = true
	end
	if player.force.technologies["boilers-3"].researched then
		player.force.recipes["high-boiler-mk4"].enabled = true
	end
	if player.force.technologies["boilers-4"].researched then
		player.force.recipes["high-boiler-mk5"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.reset_recipes()
	player.force.reset_technologies()
end
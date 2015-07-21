for _,player in pairs(game.players) do
	if player.force.technologies["tanks"].researched then
		player.force.recipes["track"].enabled = true
		player.force.recipes["track-chain-link"].enabled = true
		player.force.recipes["hull-lower"].enabled = true
		player.force.recipes["hull-top"].enabled = true
		player.force.recipes["tank-barrel"].enabled = true
	end
	if player.force.technologies["automation"].researched then
		player.force.recipes["iron-gear-wheel"].enabled = true
	end
	if player.force.technologies["steel-processing"].researched then
		player.force.recipes["steel-gear-wheel"].enabled = true
	end
end

for _,player in pairs(game.players) do
	player.force.reset_recipes()
	player.force.reset_technologies()
end

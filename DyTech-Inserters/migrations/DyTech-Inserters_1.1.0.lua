for index, force in pairs(game.forces) do
	if force.technologies["inserter-optimization"].researched then
		force.recipes["inserter-close"].enabled = true
		force.recipes["inserter-long-short"].enabled = true
		force.recipes["inserter-long-short-close"].enabled = true
		force.recipes["inserter-long-close"].enabled = true
	end
	if force.technologies["inserter-optimization-adv"].researched then
		force.recipes["inserter-fast-close"].enabled = true
		force.recipes["inserter-long-fast"].enabled = true
		force.recipes["inserter-long-fast-short"].enabled = true
		force.recipes["inserter-long-fast-close"].enabled = true
		force.recipes["inserter-long-fast-close-short"].enabled = true
		force.recipes["inserter-close-smart"].enabled = true
		force.recipes["inserter-smart"].enabled = true
		force.recipes["inserter-long-smart"].enabled = true
		force.recipes["inserter-long-short-smart"].enabled = true
		force.recipes["inserter-long-close-smart"].enabled = true
		force.recipes["inserter-long-short-close-smart"].enabled = true
	end
	if force.technologies["inserter-optimization-fast"].researched then
		force.recipes["inserter-veryfast"].enabled = true
		force.recipes["inserter-veryfast-close"].enabled = true
		force.recipes["inserter-long-veryfast"].enabled = true
		force.recipes["inserter-long-veryfast-short"].enabled = true
		force.recipes["inserter-long-veryfast-close"].enabled = true
		force.recipes["inserter-long-veryfast-close-short"].enabled = true
		force.recipes["inserter-fast-close-smart"].enabled = true
		force.recipes["inserter-long-fast-smart"].enabled = true
		force.recipes["inserter-long-fast-smart-short"].enabled = true
		force.recipes["inserter-long-fast-smart-close"].enabled = true
		force.recipes["inserter-long-fast-smart-close-short"].enabled = true
	end
	if force.technologies["inserter-optimization-smart"].researched then
		force.recipes["inserter-veryfast-smart"].enabled = true
		force.recipes["inserter-veryfast-close-smart"].enabled = true
		force.recipes["inserter-long-veryfast-smart"].enabled = true
		force.recipes["inserter-long-veryfast-smart-short"].enabled = true
		force.recipes["inserter-long-veryfast-smart-close"].enabled = true
		force.recipes["inserter-long-veryfast-smart-close-short"].enabled = true
	end
end

game.player.force.resettechnologies()
game.player.force.resetrecipes()
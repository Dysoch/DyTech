game.player.force.resettechnologies()
game.player.force.resetrecipes()

for index, force in pairs(game.forces) do
	if force.technologies["dytech-1"].researched then
    force.recipes["recycler"].enabled = true
	force.recipes["steel-axe2"].enabled = false
	force.recipes["compressor"].enabled = true
	end
	if force.technologies["gem-processing"].researched then
	force.recipes["steel-axe3"].enabled = false
	end
	if force.technologies["steel-processing"].researched then
	force.recipes["steel-axe"].enabled = false
	end
	force.recipes["iron-axe"].enabled = false
end
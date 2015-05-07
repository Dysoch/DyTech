game.player.force.resettechnologies()
game.player.force.resetrecipes()

if (game.forces.player.technologies["molds-02"].researched) then
    game.player.force.recipes["mold-crafting-gear-4"].enabled = true
end
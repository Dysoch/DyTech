function resyncRecipeEnables()
    for name, player in pairs(game.players) do
        player.force.resetrecipes()
        player.force.resettechnologies()
        resyncTechsAndRecipes(player.force.technologies, player.force.recipes)
    end
end

function resyncTechsAndRecipes(techs, recipes)
    local recipesResearched = {}
    for techName, tech in pairs(techs) do
        for effectName, effect in pairs(tech["effects"]) do
            if effect["type"] == "unlock-recipe" then
                local rx = effect["recipe"]
                recipesResearched[rx] = recipesResearched[rx] or tech.researched
            end
        end
    end
    for rxName, recipe in pairs(recipes) do
        local researched = recipesResearched[rxName]
        if researched ~= nil then
            recipe.enabled = recipesResearched[rxName]
        end
    end
end

resyncRecipeEnables() 
--[[
resync_recipe_enables.lua

This is a universal migration script for fixing up save files after recipe
unlocks are added, changed, or removed.

The usual way is to write a migration script that checks if a certain tech is
researched, and enables or disables the recipes as needed. This is necessary
because the resetrecipes() and resettechnologies() functions will NOT change
the enabled state of any recipes.

The usual way is tedious because you have to list out all of the techs and
recipes you changed, and make sure the techs are enabling the right recipes.
The function in this file will save you from all of that work.

The resyncRecipeEnables function will automatically figure out which recipes
need to be enabled or disabled, and without any effort on your part. This
function also calls resetrecipes() and resettechnologies() to reload the
recipes and techs from the mod's data, replacing the ones in the saved game.

If a player has cheated by enabling recipes without researching the tech that
provides them, this function will disable those recipes. This is usually not a
problem, since most players cheat by enabling the technologies and not the
recipes.

Migration scripts are not allowed to `dofile` or `require`, so these functions
must be pasted into each migration script where they are needed.

---

Problem: When a recipe is added to or moved to an already-researched tech,
    the recipe is not retroactively enabled. This is mainly a problem when
    the new version of your mod adds a recipe to a tech, and a saved game from
    the old mod version already has that tech researched. The player is
    "stuck", unable to use the new recipe you added. (Or if you moved a recipe
    from one tech to another, he might have that recipe when he's not supposed
    to!)

Solution: Scan the technologies table and find all recipes provided by techs,
    and associate them with the tech's researched state. Then, go through the
    recipes table, and for each recipe, set its enabled state to the researched
    state of the tech that provides it. If a recipe is provided by more than one
    tech, enable it if any of the techs are researched. If a recipe is not
    provided by any tech, its enabled state is left alone.

]]--

function resyncRecipeEnables()
    for name, force in pairs(game.forces) do
        force.resetrecipes()
        force.resettechnologies()
        resyncTechsAndRecipes(force.technologies, force.recipes)
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
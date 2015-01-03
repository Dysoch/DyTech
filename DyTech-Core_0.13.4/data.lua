-- This is where you can toggle the Dirty Water on and Off
-- True is active, false is inactive!
water = true

-- Here will be experimental features!
-- These are unbalanced, and not fully implemented. But they will work
-- They have also been yet to be added to another module!
-- True is active, false is inactive!
experimental = false

-- Dirty Water add --
if water==true then
require("prototypes.entity.liquid-handler")
require("prototypes.item.liquid-handler")
require("prototypes.fluid.water")
require("prototypes.recipe.liquid-handler")
require("prototypes.recipe.water-cleaning")
require("prototypes.technology.cleaning")
require("prototypes.base-edit.tech-dirty-water")
require("prototypes.recipe.science-dirty-water")
data.raw["offshore-pump"]["offshore-pump"].fluid = "dirty-water"
data.raw["fluid"]["water"].heat_capacity = "1250J"
else 
require("prototypes.recipe.science-water")
end

-- Experimental Check
if experimental==true then
require("prototypes.experimental.robot-entity")
require("prototypes.experimental.robot-item")
require("prototypes.experimental.robot-recipe")
require("prototypes.experimental.robot-tech")
end


-- Items Groups
require("prototypes.item-group.dytechbundles")
require("prototypes.item-group.dytechgem")
require("prototypes.item-group.dytechintermediates")
require("prototypes.item-group.dytechmachines")
require("prototypes.item-group.dytechmodules")
require("prototypes.item-group.energy")
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")
require("prototypes.item-group.metallurgy-3")
require("prototypes.item-group.others")
require("prototypes.item-group.recycler")

-- Noise Layers
require("prototypes.tile.noise-layers")

-- Catergories
require("prototypes.categories.ammo-category")
require("prototypes.categories.recipe-category")
require("prototypes.categories.resource-category")

-- Base Edits
require("prototypes.base-edit.entity")
require("prototypes.base-edit.fluid")
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")

-- Entity
require("prototypes.entity.collector")
require("prototypes.entity.explosion")
require("prototypes.entity.nature")
require("prototypes.entity.science")
require("prototypes.entity.wall")

-- Fluids

-- Item
require("prototypes.item.collector")
require("prototypes.item.intermediate")
require("prototypes.item.science")
require("prototypes.item.wall")

-- Recipe
require("prototypes.recipe.collector")
require("prototypes.recipe.intermediate")
require("prototypes.recipe.wall")

-- Tech
require("prototypes.technology.player")
require("prototypes.technology.science")

for k, v in pairs(data.raw.module) do
	if v.name:find("productivity%-module") and v.limitation then
		table.insert(v.limitation, "advanced-processing-unit")
		table.insert(v.limitation, "bundled-wire")
		table.insert(v.limitation, "stone-gear-wheel")
		table.insert(v.limitation, "steel-gear-wheel")
		table.insert(v.limitation, "glass")
		table.insert(v.limitation, "rubber")
	end
end
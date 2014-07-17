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
require("prototypes.fluid.water")
require("prototypes.recipe.water-cleaning")
data.raw["offshore-pump"]["offshore-pump"].fluid = "dirty-water"
data.raw["fluid"]["water"].heat_capacity = "1250J"
end

-- Experimental Check
if experimental==true then
require("prototypes.experimental.robot-entity")
require("prototypes.experimental.robot-item")
require("prototypes.experimental.robot-recipe")
require("prototypes.experimental.robot-tech")
require("prototypes.experimental.science-item")
require("prototypes.experimental.science-recipe")
require("prototypes.experimental.science-tech")
table.insert(data.raw["lab"]["lab"].inputs,{"science-pack-4"})
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
require("prototypes.item-group.recycler")

-- Noise Layers
require("prototypes.tile.noise-layers")

-- Catergories
require("prototypes.categories.ammo-category")
require("prototypes.categories.recipe-category")
require("prototypes.categories.resource-category")

-- Base Edits
require("prototypes.base-edit.entity")
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")

-- Entity
require("prototypes.entity.collector")
require("prototypes.entity.explosion")
require("prototypes.entity.nature")

-- Fluids

-- Item
require("prototypes.item.collector")
require("prototypes.item.intermediate")

-- Recipe
require("prototypes.recipe.collector")
require("prototypes.recipe.intermediate")
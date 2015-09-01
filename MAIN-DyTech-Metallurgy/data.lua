require "config"

-- Categories
require("prototypes.categories.recipe-category")

-- Item Groups
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")

-- Metals
require("prototypes.metals.cleaning.clean-ores")
require("prototypes.metals.iron-pig.fluid")
require("prototypes.metals.iron-pig.item")
require("prototypes.metals.iron-pig.recipe")
require("prototypes.metals.iron-wrought.item")
require("prototypes.metals.steel-blister.item")
require("prototypes.metals.steel-plate.item")

-- Intermediates
require("prototypes.intermediates.hydrogen.fluid")
require("prototypes.intermediates.oxygen.fluid")
if data.raw.fluid["clean-water"] then
	require("prototypes.intermediates.water.core-recipe")
else
	require("prototypes.intermediates.water.no-core-recipe")
end

-- Machines
require("prototypes.machines.electrolyser.entity")
require("prototypes.machines.electrolyser.item")
require("prototypes.machines.electrolyser.recipe")
--require("prototypes.machines.electrolyser.tech")
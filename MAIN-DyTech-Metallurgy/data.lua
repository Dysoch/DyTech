require "config"

-- Categories
require("prototypes.categories.autoplace-controls")
require("prototypes.categories.recipe-category")

-- Item Groups
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")

-- Resources
require("prototypes.resources.resources")

-- Metals
require("prototypes.metals.cleaning.clean-ores")
require("prototypes.metals.cleaning.fluid")
require("prototypes.metals.cleaning.lava")
require("prototypes.metals.cleaning.lava-resource")
require("prototypes.metals.cleaning.slurry-processing")
require("prototypes.metals.iron-pig.fluid")
require("prototypes.metals.iron-pig.item")
require("prototypes.metals.iron-pig.recipe")
require("prototypes.metals.iron-wrought.item")
require("prototypes.metals.steel-blister.item")
require("prototypes.metals.steel-plate.item")

-- Intermediates
require("prototypes.intermediates.chemicals.fluid")
require("prototypes.intermediates.intermediates.item")
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
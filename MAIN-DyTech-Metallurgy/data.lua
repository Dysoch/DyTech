require "config"

-- Categories
require("prototypes.categories.autoplace-controls")
require("prototypes.categories.recipe-category")

-- Item Groups
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")
require("prototypes.item-group.metallurgy-3")

-- Resources
require("prototypes.resources.resources")
require("prototypes.resources.lava")

-- Raw Ore Processing
require("prototypes.ores.processing")
require("prototypes.ores.stone-bricks")

-- Metals
require("prototypes.metals.copper.item")
require("prototypes.metals.copper.recipe")
require("prototypes.metals.raw-ores.recipe")
require("prototypes.metals.iron-pig.fluid")
require("prototypes.metals.iron-pig.item")
require("prototypes.metals.iron-pig.recipe")
require("prototypes.metals.iron-wrought.item")
require("prototypes.metals.iron-wrought.recipe")
require("prototypes.metals.steel-blister.item")
require("prototypes.metals.steel-plate.item")
require("prototypes.metals.steel-plate.recipe")

-- Alloys
require("prototypes.alloys.plates")

-- Intermediates
require("prototypes.intermediates.charcoal.recipe")
require("prototypes.intermediates.chemicals.fluid")
require("prototypes.intermediates.chemicals.venting")
require("prototypes.intermediates.intermediates.item")
if data.raw.fluid["clean-water"] then
	require("prototypes.intermediates.water.core-recipe")
else
	require("prototypes.intermediates.water.no-core-recipe")
end

-- Machines
require("prototypes.machines.venting.entity")
require("prototypes.machines.venting.item")
require("prototypes.machines.venting.recipe")
require("prototypes.machines.electrolyser.entity")
require("prototypes.machines.electrolyser.item")
require("prototypes.machines.electrolyser.recipe")
require("prototypes.machines.pipes.pipes")
require("prototypes.machines.pipes.pipes-to-ground")
--require("prototypes.machines.electrolyser.tech")
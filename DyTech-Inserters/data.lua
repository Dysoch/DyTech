-- All files who dont care if dytech is installed or not --
require("prototypes.base-edit.item")
require("prototypes.entity.normal-inserter")
require("prototypes.entity.smart-inserter")
require("prototypes.item.normal-inserter")
require("prototypes.item.smart-inserter")
require("prototypes.item-group.inserter")
require("prototypes.technology.inserter")

-- Check if DyTech is installed, and determine which file to load --
if data.raw.item["advanced-processing-unit"] then
require("prototypes.recipe.inserter-dytech")
else
require("prototypes.recipe.inserter-nondytech")
end

-- super fast inserters, only added if DyTech-Transportation is installed --
if data.raw.item["advanced-processing-unit"] and data.raw.item["steel-gear-wheel"] and data.raw.item["extreme-transport-belt"] then
require("prototypes.entity.super-inserter")
require("prototypes.item.super-inserter")
require("prototypes.recipe.super-inserter")
require("prototypes.technology.super-inserter")
end
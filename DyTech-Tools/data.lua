--Base Edits!
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")

-- Always active!
require("prototypes.item.tools")
require("prototypes.recipe.tools")
require("prototypes.technology.tools")

-- Active When DyTech-Warfare is installed!
if data.raw.item["ruby-4"] then
require("prototypes.item.gems-tools")
require("prototypes.recipe.gems-tools")
require("prototypes.technology.gems-tools")
end

-- Active When DyTech-Metallurgy is installed!
--if data.raw.item["tungsten-ore"] then
--require("prototypes.item.metallurgy-tools")
--require("prototypes.recipe.metallurgy-tools")
--require("prototypes.technology.metallurgy-tools")
--end
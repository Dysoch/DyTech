--Base Edits!
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")

-- Always active!
require("prototypes.item.tools")
require("prototypes.recipe.tools")
require("prototypes.technology.tools")

-- Active When DyTech-Gems is installed!
if data.raw.item["ruby-4"] then
require("prototypes.item.tools-gems")
require("prototypes.recipe.tools-gems")
require("prototypes.technology.tools-gems")
end

-- Active When DyTech-Metallurgy is installed!
if data.raw.item["tungsten-ore"] then
require("prototypes.item.tools-metallurgy")
require("prototypes.recipe.tools-metallurgy")
require("prototypes.technology.tools-metallurgy")
end
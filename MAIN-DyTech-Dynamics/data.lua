require "config"

if Research_System then
require("prototypes.research-system")
require("prototypes.style-research-system")
end

if Collectors then
require("prototypes.collectors.entity")
require("prototypes.collectors.item")
require("prototypes.collectors.recipe")
end
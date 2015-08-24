require "config"

if Config.Collectors then
require("prototypes.collectors.entity")
require("prototypes.collectors.item")
require("prototypes.collectors.recipe")
end
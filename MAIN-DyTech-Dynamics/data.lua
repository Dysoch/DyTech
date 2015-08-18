require "config"

if Config.Research_System then
if Config.Infinite_Research and not Config.Longer_Research then
	require("prototypes.infinite-research.tech")
end
require("prototypes.research-system")
require("prototypes.style-research-system")
end

if Config.Collectors then
require("prototypes.collectors.entity")
require("prototypes.collectors.item")
require("prototypes.collectors.recipe")
end
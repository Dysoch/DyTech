require "prototypes.metals.cleaning.cleaning"

function createslurryprocessingrecipenocore(NAME)
  local result =
  {
    type = "recipe",
    name = "water-electrolys",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/intermediates/water.png",
	category = "crafting-with-fluid",
    subgroup = "dytech-metallurgy-fluids-cleaning-recipes-2",
    enabled = true,
    ingredients =
    {
	  {type="fluid", name="coal", amount=1},
	  {type="fluid", name="water", amount=1},
    },
    results = 
	{
	  {type="item", name="oxygen", amount=1},
	}
  }
  result.name = "clean-" .. NAME
  result.order = "clean-" .. NAME
  result.ingredients[1].name = NAME .. "-slurry"
  result.results[1].name = "clean-" .. NAME
  result.icon = data.raw.item[NAME].icon
  return result
end

function createslurryprocessingrecipecore(NAME)
  local result =
  {
    type = "recipe",
    name = "water-electrolys",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/intermediates/water.png",
	category = "crafting-with-fluid",
    subgroup = "dytech-metallurgy-fluids-cleaning-recipes-2",
    enabled = true,
    ingredients =
    {
	  {type="fluid", name="coal", amount=1},
	  {type="fluid", name="clean-water", amount=1},
    },
    results = 
	{
	  {type="item", name="oxygen", amount=1},
	}
  }
  result.name = "clean-" .. NAME
  result.order = "clean-" .. NAME
  result.ingredients[1].name = NAME .. "-slurry"
  result.results[1].name = "clean-" .. NAME
  result.icon = data.raw.item["clean-"..NAME].icon
  return result
end

if data.raw.fluid["clean-water"] then
for index,name in pairs(ORES) do
data:extend(
  {
	createslurryprocessingrecipecore(name)
  })
end
else
for index,name in pairs(ORES) do
data:extend(
  {
	createslurryprocessingrecipenocore(name)
  })
end
end

data.raw["item"]["copper-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/copper.png"
data.raw["item"]["iron-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/iron.png"
data.raw["item"]["tin-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/tin.png"
data.raw["item"]["zinc-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/zinc.png"
data.raw["item"]["lead-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/lead.png"
data.raw["item"]["silver-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/silver.png"
data.raw["item"]["gold-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/gold.png"
data.raw["item"]["tungsten-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/tungsten.png"
data.raw["item"]["cobalt-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/cobalt.png"
data.raw["item"]["ardite-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/ardite.png"
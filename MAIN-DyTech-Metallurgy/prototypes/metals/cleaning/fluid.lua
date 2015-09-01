require "prototypes.metals.cleaning.cleaning"

function createoreslurry(NAME)
  local result =
  {
    type = "fluid",
    name = "clean-water",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/copper.png",
    order = "clean-water",
    pressure_to_speed_ratio = 0.6,
    flow_to_energy_ratio = 0.885,
    subgroup = "dytech-metallurgy-fluids-cleaning",
  }
  result.name = NAME .. "-slurry"
  result.order = NAME .. "-slurry"
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/cleaning/" .. NAME .. ".png"
  return result
end

function createoreslurryrecipe(NAME)
  local result =
  {
    type = "recipe",
    name = "water-electrolys",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/intermediates/water.png",
	category = "crafting-with-fluid",
    subgroup = "dytech-metallurgy-fluids-cleaning-recipes-1",
    enabled = true,
    ingredients =
    {
	  {type="item", name="coal", amount=1},
	  {type="fluid", name="lava", amount=1},
    },
    results = 
	{
	  {type="fluid", name="oxygen", amount=1},
	}
  }
  result.name = NAME .. "-slurry"
  result.order = NAME .. "-slurry"
  result.ingredients[1].name = NAME 
  result.results[1].name = NAME .. "-slurry"
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/cleaning/" .. NAME .. ".png"
  return result
end

for index,name in pairs(ORES) do
data:extend(
  {
	createoreslurry(name)
  })
end

for index,name in pairs(ORES) do
data:extend(
  {
	createoreslurryrecipe(name)
  })
end


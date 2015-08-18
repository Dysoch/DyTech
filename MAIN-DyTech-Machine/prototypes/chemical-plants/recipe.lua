data:extend(
{ 
  {
    type = "recipe",
    name = "chemical-plant-1",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"chemical-plant", 1},
      {"steel-gear-wheel", 5},
      {"advanced-circuit", 5},
      {"pipe", 15}
    },
    result= "chemical-plant-1"
  },
  {
    type = "recipe",
    name = "chemical-plant-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"chemical-plant-1", 1},
      {"tungsten-gear-wheel", 5},
      {"processing-unit", 5},
      {"pipe", 25}
    },
    result= "chemical-plant-2"
  },
}
)
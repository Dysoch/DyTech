data:extend(
{ 
  {
    type = "recipe",
    name = "geothermal-extractor",
    energy_required = 10,
    subgroup = "metallurgy-machines",
    ingredients =
    {
      {"lead-plate", 15},
      {"lead-gear-wheel", 10},
      {"electronic-circuit", 10},
      {"pipe", 10},
    },
    result = "geothermal-extractor",
    enabled = false
  },
  {
    type = "recipe",
    name = "lava-heater",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"liquid-handler", 1},
      {"advanced-circuit", 3},
      {"pipe", 5},
      {"frame-2", 1},
    },
    result= "lava-heater"
  },
  {
    type = "recipe",
    name = "lava-heater-electric",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"liquid-handler", 1},
      {"advanced-circuit", 15},
      {"pipe", 25},
      {"frame-2", 5},
    },
    result= "lava-heater-electric"
  },
  {
    type = "recipe",
    name = "lava-cooler",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"liquid-handler", 1},
      {"advanced-circuit", 3},
      {"pipe", 5},
      {"frame-2", 1},
    },
    result= "lava-cooler"
  },
}
)
data:extend(
{ 
  {
    type = "recipe",
    name = "geothermal-extractor",
    energy_required = 20,
    ingredients =
    {
      {"steel-plate", 15},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 10},
      {"pipe", 10},
    },
    result = "geothermal-extractor",
    enabled = false
  },
  {
    type = "recipe",
    name = "lava-handler",
    energy_required = 20,
    ingredients =
    {
      {"boiler", 2},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 10},
      {"pipe", 4},
    },
    result = "lava-handler",
    enabled = false
  },
}
)
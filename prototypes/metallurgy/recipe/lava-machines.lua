data:extend(
{ 
  {
    type = "recipe",
    name = "geothermal-extractor",
    energy_required = 20,
    subgroup = "metallurgy-machines",
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
    subgroup = "metallurgy-machines",
    ingredients =
    {
      {"boiler", 2},
      {"steel-gear-wheel", 5},
      {"advanced-circuit", 8},
      {"pipe", 8},
    },
    result = "lava-handler",
    enabled = false
  },
}
)
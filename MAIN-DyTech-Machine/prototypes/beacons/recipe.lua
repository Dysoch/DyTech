data:extend(
{ 
  {
    type = "recipe",
    name = "basic-beacon-1",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"basic-beacon", 1},
      {"advanced-circuit", 40},
    },
    result = "basic-beacon-1"
  },
  {
    type = "recipe",
    name = "basic-beacon-2",
    enabled = false,
    energy_required = 45,
    ingredients =
    {
      {"basic-beacon-1", 1},
      {"processing-unit", 40},
      {"copper-plate", 50},
    },
    result = "basic-beacon-2"
  },
  {
    type = "recipe",
    name = "basic-beacon-3",
    enabled = false,
    energy_required = 60,
    ingredients =
    {
      {"basic-beacon-2", 1},
      {"processing-unit", 80},
      {"steel-plate", 50},
    },
    result = "basic-beacon-3"
  },
}
)

data:extend(
{ 
  {
    type = "recipe",
    name = "basic-beacon-1",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"basic-beacon", 2},
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
      {"basic-beacon", 2},
      {"processing-unit", 40},
      {"zinc-plate", 10},
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
      {"basic-beacon", 2},
      {"advanced-processing-unit", 40},
      {"gold-plate", 10},
    },
    result = "basic-beacon-3"
  },
}
)
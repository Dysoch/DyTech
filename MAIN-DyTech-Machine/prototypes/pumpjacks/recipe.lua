data:extend(
{ 
  {
    type = "recipe",
    name = "pumpjack-mk2",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack", 1},
      {"advanced-circuit", 10},
      {"frame", 1},
    },
    result = "pumpjack-mk2",
    enabled = false
  },
  {
    type = "recipe",
    name = "pumpjack-mk3",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk2", 1},
      {"advanced-circuit", 20},
      {"frame", 1},
      {"lead-gear-wheel", 3},
    },
    result = "pumpjack-mk3",
    enabled = false
  },
  {
    type = "recipe",
    name = "pumpjack-mk4",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk3", 1},
      {"processing-unit", 20},
      {"frame", 1},
      {"steel-gear-wheel", 6},
    },
    result = "pumpjack-mk4",
    enabled = false
  },
  {
    type = "recipe",
    name = "pumpjack-mk5",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk4", 1},
      {"advanced-processing-unit", 20},
      {"frame", 1},
      {"tungsten-gear-wheel", 12},
    },
    result = "pumpjack-mk5",
    enabled = false
  },
}
)
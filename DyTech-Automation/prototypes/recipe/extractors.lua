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
      {"pipe-mk2", 10},
    },
    result = "pumpjack-mk2",
    enabled = true
  },
  {
    type = "recipe",
    name = "pumpjack-mk3",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk2", 1},
      {"advanced-circuit", 20},
      {"pipe-mk3", 10},
    },
    result = "pumpjack-mk3",
    enabled = true
  },
  {
    type = "recipe",
    name = "pumpjack-mk4",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk3", 1},
      {"processing-unit", 20},
      {"pipe-mk4", 10},
    },
    result = "pumpjack-mk4",
    enabled = true
  },
  {
    type = "recipe",
    name = "pumpjack-mk5",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack-mk4", 1},
      {"advanced-processing-unit", 20},
      {"pipe-mk5", 10},
    },
    result = "pumpjack-mk5",
    enabled = true
  },
}
)
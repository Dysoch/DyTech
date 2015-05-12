data:extend(
{ 
  {
    type = "recipe",
    name = "poison-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"poison-capsule", 1},
      {"steel-plate", 3},
      {"electronic-circuit", 3},
      {"coal", 10},
    },
    result = "poison-capsule-1"
  },
  {
    type = "recipe",
    name = "poison-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"poison-capsule-1", 1},
      {"steel-plate", 3},
      {"electronic-circuit", 3},
      {"coal", 10},
    },
    result = "poison-capsule-2"
  },
}
)
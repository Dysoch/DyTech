data:extend(
{ 
  {
    type = "recipe",
    name = "slowdown-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"slowdown-capsule", 1},
      {"ardite-plate", 5},
      {"coal", 10},
    },
    result = "slowdown-capsule-1"
  },
  {
    type = "recipe",
    name = "slowdown-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"slowdown-capsule-1", 1},
      {"cobalt-plate", 10},
      {"coal", 15},
    },
    result = "slowdown-capsule-2"
  },
}
)
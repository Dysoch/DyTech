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
      {"iron-plate", 5},
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
      {"steel-plate", 10},
      {"coal", 15},
    },
    result = "slowdown-capsule-2"
  },
}
)
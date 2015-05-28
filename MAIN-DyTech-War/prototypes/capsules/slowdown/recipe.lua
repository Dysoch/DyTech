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
    },
    result = "slowdown-capsule-2"
  },
}
)
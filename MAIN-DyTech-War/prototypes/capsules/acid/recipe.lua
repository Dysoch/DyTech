data:extend(
{ 
  {
    type = "recipe",
    name = "acid-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"poison-capsule", 1},
      {"rubber", 1},
      {"bone-charcoal", 1},
    },
    result = "acid-capsule-1"
  },
  {
    type = "recipe",
    name = "acid-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"acid-capsule-1", 1},
      {"rubber", 1},
      {"bone-charcoal", 2},
    },
    result = "acid-capsule-2"
  },
  {
    type = "recipe",
    name = "acid-capsule-3",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"acid-capsule-2", 1},
      {"rubber", 1},
      {"bone-charcoal", 5},
    },
    result = "acid-capsule-3"
  },
}
)
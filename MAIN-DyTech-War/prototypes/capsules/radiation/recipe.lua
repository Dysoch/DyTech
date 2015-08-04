data:extend(
{ 
  {
    type = "recipe",
    name = "radiation-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"poison-capsule", 4},
      {"acid-capsule-1", 4},
    },
    result = "radiation-capsule-1"
  },
  {
    type = "recipe",
    name = "radiation-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"radiation-capsule-1", 1},
      {"poison-capsule-1", 4},
      {"acid-capsule-2", 4},
    },
    result = "radiation-capsule-2"
  },
  {
    type = "recipe",
    name = "radiation-capsule-3",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"radiation-capsule-2", 1},
      {"poison-capsule-2", 4},
      {"acid-capsule-2", 4},
    },
    result = "radiation-capsule-3"
  },
}
)
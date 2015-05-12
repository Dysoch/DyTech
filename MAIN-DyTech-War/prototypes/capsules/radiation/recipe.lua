data:extend(
{ 
  {
    type = "recipe",
    name = "radiation-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"poison-capsule", 1},
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
    },
    result = "radiation-capsule-3"
  },
}
)
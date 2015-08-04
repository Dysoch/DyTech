data:extend(
{ 
  {
    type = "recipe",
    name = "firestorm-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"napalm-capsule-1", 5},
    },
    result = "firestorm-capsule-1"
  },
  {
    type = "recipe",
    name = "firestorm-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"firestorm-capsule-1", 1},
      {"napalm-capsule-2", 5},
    },
    result = "firestorm-capsule-2"
  },
  {
    type = "recipe",
    name = "firestorm-capsule-3",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"firestorm-capsule-2", 1},
      {"napalm-capsule-3", 5},
    },
    result = "firestorm-capsule-3"
  },
}
)
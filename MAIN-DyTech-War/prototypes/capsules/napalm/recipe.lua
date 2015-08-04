data:extend(
{ 
  {
    type = "recipe",
    name = "napalm-capsule-1",
    enabled = false,
    energy_required = 11,
    ingredients =
    {
      {"poison-capsule", 1},
      {"flame-thrower-ammo", 5},
    },
    result = "napalm-capsule-1"
  },
  {
    type = "recipe",
    name = "napalm-capsule-2",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"napalm-capsule-1", 1},
      {"flame-thrower-ammo", 5},
    },
    result = "napalm-capsule-2"
  },
  {
    type = "recipe",
    name = "napalm-capsule-3",
    enabled = false,
    energy_required = 14,
    ingredients =
    {
      {"napalm-capsule-2", 1},
      {"flame-thrower-ammo", 5},
    },
    result = "napalm-capsule-3"
  },
}
)
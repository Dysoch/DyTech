data:extend(
{ 
  {
    type = "recipe",
    name = "marauder-capsule",
    enabled = false, --temporary!
    energy_required = 20,
    ingredients =
    {
      {"destroyer-capsule", 4},
      {"speed-module-3", 1}
    },
    result = "marauder-capsule"
  },
  {
    type = "recipe",
    name = "sharpshooter-capsule",
    enabled = false, --temporary!
    energy_required = 25,
    ingredients =
    {
      {"marauder-capsule", 4},
      {"speed-module-3", 2}
    },
    result = "sharpshooter-capsule"
  },
  {
    type = "recipe",
    name = "frenzy-capsule",
    enabled = false, --temporary!
    energy_required = 30,
    ingredients =
    {
      {"sharpshooter-capsule", 4},
      {"marauder-capsule", 4},
      {"speed-module-3", 4}
    },
    result = "frenzy-capsule"
  },
  {
    type = "recipe",
    name = "basic-grenade-2",
    enabled = false, --temporary
    energy_required = 11,
    ingredients =
    {
      {"basic-grenade", 1},
      {"steel-plate", 2},
      {"explosives", 1},
    },
    result = "basic-grenade-2"
  },
  {
    type = "recipe",
    name = "basic-grenade-3",
    enabled = false, --temporary
    energy_required = 11,
    ingredients =
    {
      {"basic-grenade-2", 1},
      {"tin-plate", 2},
      {"explosives", 2},
    },
    result = "basic-grenade-3"
  },
}
)
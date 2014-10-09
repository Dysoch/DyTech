data:extend(
{ 
  {
    type = "recipe",
    name = "marauder-capsule",
    enabled = true, --temporary!
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
    enabled = true, --temporary!
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
    enabled = true, --temporary!
    energy_required = 30,
    ingredients =
    {
      {"sharpshooter-capsule", 4},
      {"marauder-capsule", 4},
      {"speed-module-3", 4}
    },
    result = "frenzy-capsule"
  },
}
)
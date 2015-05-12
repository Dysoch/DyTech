data:extend(
{ 
  {
    type = "recipe",
    name = "marauder-capsule",
    enabled = false,
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
    enabled = false,
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
    enabled = false,
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
    name = "marauder-turret-capsule",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"marauder-capsule", 2},
      {"speed-module-3", 1},
      {"tungsten-plate", 10},
    },
    result = "marauder-turret-capsule"
  },
  {
    type = "recipe",
    name = "sharpshooter-turret-capsule",
    enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"sharpshooter-capsule", 2},
      {"speed-module-3", 2},
      {"tungsten-plate", 20},
    },
    result = "sharpshooter-turret-capsule"
  },
  {
    type = "recipe",
    name = "frenzy-turret-capsule",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"frenzy-capsule", 2},
      {"speed-module-3", 4},
      {"tungsten-plate", 40},
    },
    result = "frenzy-turret-capsule"
  },
  {
    type = "recipe",
    name = "mixed-turret-capsule",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"frenzy-turret-capsule", 1},
      {"sharpshooter-turret-capsule", 1},
    },
    result = "mixed-turret-capsule"
  },
  {
    type = "recipe",
    name = "mixed-capsule",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"frenzy-capsule", 1},
      {"sharpshooter-capsule", 1},
    },
    result = "mixed-capsule"
  },
}
)
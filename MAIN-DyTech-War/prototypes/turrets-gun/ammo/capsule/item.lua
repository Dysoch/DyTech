data:extend(
{
  {
    type = "ammo",
    name = "poison-capsule-ammo-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/poison/1.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "poison-capsule",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 30
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[poison-capsule-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "poison-capsule-ammo-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/poison/2.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "poison-capsule-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 50
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[poison-capsule-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "poison-capsule-ammo-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/poison/3.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "poison-capsule-2",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 70
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[poison-capsule-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-capsule-ammo-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/acid/1.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-capsule-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 60
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[acid-capsule-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-capsule-ammo-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/acid/2.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-capsule-2",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 80
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[acid-capsule-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-capsule-ammo-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/acid/3.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-capsule-3",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 100
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[acid-capsule-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-capsule-ammo-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/napalm/1.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "napalm-capsule-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 50
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[napalm-capsule-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-capsule-ammo-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/napalm/2.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "napalm-capsule-2",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 65
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[napalm-capsule-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-capsule-ammo-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/napalm/3.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "napalm-capsule-3",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 80
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[napalm-capsule-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "firestorm-capsule-ammo-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/1.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "firestorm-capsule-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 50
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[firestorm-capsule-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "firestorm-capsule-ammo-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/2.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "firestorm-capsule-2",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 100
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[firestorm-capsule-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "firestorm-capsule-ammo-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/3.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "firestorm-capsule-3",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 150
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[firestorm-capsule-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "radiation-capsule-ammo-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/radiation/1.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "radiation-capsule-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 50
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[radiation-capsule-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "radiation-capsule-ammo-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/radiation/2.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "radiation-capsule-2",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 100
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[radiation-capsule-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "radiation-capsule-ammo-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/radiation/3.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "capsule",
      target_type = "direction",
      source_effects = {},
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "radiation-capsule-3",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 150
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-combat-ammo-capsule",
    order = "z[radiation-capsule-3]",
    stack_size = 100
  },
}
)
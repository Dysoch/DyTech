data:extend(
{
  {
    type = "capsule",
    name = "marauder-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "marauder-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "b[capsule-1]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "sharpshooter-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "sharpshooter-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "b[capsule-2]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "frenzy-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 10,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "frenzy-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "b[capsule-3]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "marauder-turret-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "marauder-turret-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "c[capsule-1]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "sharpshooter-turret-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "sharpshooter-turret-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "c[capsule-2]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "frenzy-turret-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 10,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "frenzy-turret-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "c[capsule-3]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "mixed-turret-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 10,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "mixed-turret-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "d[capsule-2]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "mixed-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 10,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "mixed-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "d[capsule-1]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "basic-grenade-2",
    icon = "__base__/graphics/icons/basic-grenade.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 25,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "basic-grenade-2",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[basic-grenade-2]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "basic-grenade-3",
    icon = "__base__/graphics/icons/basic-grenade.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 35,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "basic-grenade-3",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[basic-grenade-3]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "poison-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "poison-capsule-1",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[poison-capsule-1]",
    stack_size = 100
   },
  {
    type = "capsule",
    name = "poison-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 40,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "poison-capsule-2",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[poison-capsule-2]",
    stack_size = 100
   },
}
)
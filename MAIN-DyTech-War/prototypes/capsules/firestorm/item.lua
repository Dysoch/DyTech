data:extend(
{
  {
    type = "capsule",
    name = "firestorm-capsule-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/1.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
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
              projectile = "firestorm-capsule-1",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[firestorm-capsule-1]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "firestorm-capsule-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/2.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
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
              projectile = "firestorm-capsule-2",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[firestorm-capsule-2]",
    stack_size = 100
   },
  {
    type = "capsule",
    name = "firestorm-capsule-3",
    icon = "__MAIN-DyTech-War__/graphics/capsules/firestorm/3.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 50,
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
              projectile = "firestorm-capsule-3",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[firestorm-capsule-3]",
    stack_size = 100
   },
}
)
data.raw["capsule"]["poison-capsule"].icon = "__MAIN-DyTech-War__/graphics/capsules/poison/1.png"

data:extend(
{
  {
    type = "capsule",
    name = "poison-capsule-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/poison/2.png",
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
    icon = "__MAIN-DyTech-War__/graphics/capsules/poison/3.png",
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
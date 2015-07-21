data.raw["capsule"]["slowdown-capsule"].icon = "__MAIN-DyTech-War__/graphics/capsules/slowdown/1.png"

data:extend(
{
  {
    type = "capsule",
    name = "slowdown-capsule-1",
    icon = "__MAIN-DyTech-War__/graphics/capsules/slowdown/2.png",
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
              projectile = "slowdown-capsule-1",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[slowdown-capsule-1]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "slowdown-capsule-2",
    icon = "__MAIN-DyTech-War__/graphics/capsules/slowdown/3.png",
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
        range = 55,
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
              projectile = "slowdown-capsule-2",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "dytech-combat-capsules",
    order = "a[slowdown-capsule-2]",
    stack_size = 100
   },
}
)
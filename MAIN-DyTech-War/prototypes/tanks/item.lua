data:extend(
{
  {
    type = "item",
    name = "tank-dytech-1",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-combat-transport",
    order = "b[tank]-b[tank-2]",
    place_result = "tank-dytech-1",
    stack_size = 1
  },
  {
    type = "item",
    name = "tank-dytech-2",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-combat-transport",
    order = "b[tank]-c[tank-3]",
    place_result = "tank-dytech-2",
    stack_size = 1
  },
  {
    type = "gun",
    name = "laser-gun-tank",
    icon = "__MAIN-DyTech-War__/graphics/gun-laser/sniper.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "dytech-combat-guns",
    order = "z[tank]-a[laser]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "battery-tank",
      cooldown = 8,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      range = 30,
      sound = make_laser_sounds(0.5),
    },
    stack_size = 1
  },
  {
    type = "ammo",
    name = "battery-tank",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      type = "projectile",
      category = "battery-tank",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-emerald-3",
          starting_speed = 0.75,
          source_effects =
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "dytech-combat-ammo",
    order = "z[tank]-a[battery-1]",
    stack_size = 100
  },
}
)
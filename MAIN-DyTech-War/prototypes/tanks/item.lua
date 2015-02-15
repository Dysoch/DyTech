data:extend(
{
  {
    type = "item",
    name = "tank-dytech-1",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-c[tank-dytech-1]",
    place_result = "tank-dytech-1",
    stack_size = 1
  },
  {
    type = "gun",
    name = "laser-gun-tank",
    icon = "__MAIN-DyTech-War__/graphics/gun-laser/sniper.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-g[laser]",
    attack_parameters =
    {
      ammo_category = "battery-tank",
      cooldown = 8,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      range = 30,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.8
        }
      }
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
    subgroup = "ammo",
    order = "z[tank]-i[battery-1]",
    stack_size = 100
  },
}
)
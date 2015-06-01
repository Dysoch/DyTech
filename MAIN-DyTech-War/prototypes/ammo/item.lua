data:extend(
{
  {
    type = "ammo",
    name = "sniper-magazine",
    icon = "__MAIN-DyTech-War__/graphics/ammo/sniper-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "sniper-ammo",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 50 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 5,
    subgroup = "dytech-combat-ammo",
    order = "a[sniper]",
    stack_size = 25
  },
  {
    type = "ammo",
    name = "laser-clip-1",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-gun-ruby-1",
          starting_speed = 0.5,
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
    order = "a[laser-clip-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "laser-clip-2",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-gun-sapphire-1",
          starting_speed = 0.5,
          source_effects =
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          }
        }
      }
    },
    magazine_size = 75,
    subgroup = "dytech-combat-ammo",
    order = "a[laser-clip-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "laser-clip-3",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-gun-emerald-3",
          starting_speed = 0.75,
          source_effects =
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "a[laser-clip-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "laser-clip-shotgun-1",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery-shotgun",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "laser-bubble"
      },
      action =
      {
        type = "direct",
        repeat_count = 12,
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-shotgun-ruby-1",
          starting_speed = 0.25,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 15
        }
      }
    },
    magazine_size = 50,
    subgroup = "dytech-combat-ammo",
    order = "a[laser-clip-shotgun-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "laser-clip-shotgun-2",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery-shotgun",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "laser-bubble"
      },
      action =
      {
        type = "direct",
        repeat_count = 18,
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-shotgun-sapphire-1",
          starting_speed = 0.50,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 20
        }
      }
    },
    magazine_size = 75,
    subgroup = "dytech-combat-ammo",
    order = "a[laser-clip-shotgun-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "laser-clip-shotgun-3",
    icon = "__base__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "battery-shotgun",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "laser-bubble"
      },
      action =
      {
        type = "direct",
        repeat_count = 24,
        action_delivery =
        {
          type = "projectile",
          projectile = "laser-shotgun-emerald-1",
          starting_speed = 0.75,
          direction_deviation = 0.35,
          range_deviation = 0.3,
          max_range = 25
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "a[laser-clip-shotgun-3]",
    stack_size = 100
  },
}
)
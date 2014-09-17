data:extend(
{
  {
    type = "ammo",
    name = "sniper-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/sniper-magazine.png",
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
    subgroup = "ammo",
    order = "i[sniper]",
    stack_size = 25
  },
  {
    type = "ammo",
    name = "battery-2",
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
          projectile = "laser-sapphire-1",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          }
        }
      }
    },
    magazine_size = 75,
    subgroup = "ammo",
    order = "i[battery-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "battery-3",
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
          projectile = "laser-emerald-1",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          }
        }
      }
    },
    magazine_size = 75,
    subgroup = "ammo",
    order = "i[battery-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "diamond-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/diamond-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
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
              damage = { amount = 25 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ammo",
    order = "gem-diamond",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "emerald-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/emerald-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
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
              damage = { amount = 17.5 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ammo",
    order = "gem-emerald",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "topaz-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/topaz-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
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
              damage = { amount = 15 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ammo",
    order = "gem-topaz",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "ruby-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/ruby-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
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
              damage = { amount = 10 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ammo",
    order = "gem-ruby",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "sapphire-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/sapphire-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
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
              damage = { amount = 12.5 , type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ammo",
    order = "gem-sapphire",
    stack_size = 100
  },
}
)
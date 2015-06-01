require "prototypes.internal-config"

data:extend(
{
  {
    type = "ammo",
    name = "poison-magazine-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Poison1
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[poison-ammo-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "poison-magazine-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Poison2
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[poison-ammo-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "poison-magazine-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Poison3
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[poison-ammo-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-magazine-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Acid1
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[acid-ammo-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-magazine-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Acid2
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[acid-ammo-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "acid-magazine-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Acid3
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[acid-ammo-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-magazine-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Fire1
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[napalm-ammo-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-magazine-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Fire2
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[napalm-ammo-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "napalm-magazine-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Fire3
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[napalm-ammo-3]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "plasma-magazine-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Plasma1
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[plasma-ammo-1]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "plasma-magazine-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Plasma2
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[plasma-ammo-2]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "plasma-magazine-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
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
              damage = Bullets.Plasma3
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "dytech-combat-ammo",
    order = "b[plasma-ammo-3]",
    stack_size = 100
  },
}
)
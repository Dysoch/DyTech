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
    order = "s-m",
    stack_size = 25
  },
  {
    type = "ammo",
    name = "diamond-bullet-magazine",
    icon = "__DyTech-Warfare__/graphics/icons/diamond-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "gem-ammo",
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
      category = "gem-ammo",
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
              damage = { amount = 35 , type = "physical"}
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
      category = "gem-ammo",
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
              damage = { amount = 30 , type = "physical"}
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
      category = "gem-ammo",
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
              damage = { amount = 20 , type = "physical"}
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
      category = "gem-ammo",
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
    order = "gem-sapphire",
    stack_size = 100
  },
}
)
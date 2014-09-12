data:extend(
{
  {
    type = "mining-tool",
    name = "tungsten-axe",
    icon = "__DyTech-Tools__/graphics/icons/tungsten-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 15 , type = "physical"}
        }
      }
    },
    durability = 125000,
    subgroup = "tool",
    order = "a[mining]-h[tungsten-axe]",
    speed = 15,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "tin-axe",
    icon = "__DyTech-Tools__/graphics/icons/tin-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 6 , type = "physical"}
        }
      }
    },
    durability = 7000,
    subgroup = "tool",
    order = "a[mining]-h[tin-axe]",
    speed = 3,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "silver-axe",
    icon = "__DyTech-Tools__/graphics/icons/silver-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 10 , type = "physical"}
        }
      }
    },
    durability = 45000,
    subgroup = "tool",
    order = "a[mining]-h[silver-axe]",
    speed = 8,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "gold-axe",
    icon = "__DyTech-Tools__/graphics/icons/gold-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 25 , type = "physical"}
        }
      }
    },
    durability = 4000,
    subgroup = "tool",
    order = "a[mining]-h[gold-axe]",
    speed = 4,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "brass-axe",
    icon = "__DyTech-Tools__/graphics/icons/brass-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 8 , type = "physical"}
        }
      }
    },
    durability = 32000,
    subgroup = "tool",
    order = "a[mining]-h[brass-axe]",
    speed = 8,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "bronze-axe",
    icon = "__DyTech-Tools__/graphics/icons/bronze-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 8 , type = "physical"}
        }
      }
    },
    durability = 24000,
    subgroup = "tool",
    order = "a[mining]-h[bronze-axe]",
    speed = 7,
    stack_size = 50
  },
}
)

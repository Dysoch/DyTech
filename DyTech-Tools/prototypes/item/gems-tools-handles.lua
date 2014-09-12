data:extend(
{
  {
    type = "mining-tool",
    name = "ruby-axe",
    icon = "__DyTech-Tools__/graphics/icons/ruby-axe.png",
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
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 65000,
    subgroup = "tool",
    order = "a[mining]-g[ruby-axe]",
    speed = 12,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "sapphire-axe",
    icon = "__DyTech-Tools__/graphics/icons/sapphire-axe.png",
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
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 40000,
    subgroup = "tool",
    order = "a[mining]-g[sapphire-axe]",
    speed = 12,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "emerald-axe",
    icon = "__DyTech-Tools__/graphics/icons/emerald-axe.png",
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
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 60000,
    subgroup = "tool",
    order = "a[mining]-g[emerald-axe]",
    speed = 12,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "topaz-axe",
    icon = "__DyTech-Tools__/graphics/icons/topaz-axe.png",
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
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 50000,
    subgroup = "tool",
    order = "a[mining]-g[topaz-axe]",
    speed = 12,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "diamond-axe",
    icon = "__DyTech-Tools__/graphics/icons/diamond-axe.png",
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
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 150000,
    subgroup = "tool",
    order = "a[mining]-g[diamond-axe]",
    speed = 12,
    stack_size = 50
  },
}
)

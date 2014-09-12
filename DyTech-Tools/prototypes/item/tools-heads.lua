data:extend(
{
  {
    type = "mining-tool",
    name = "wooden-axe",
    icon = "__DyTech-Tools__/graphics/icons/wooden-axe.png",
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
            damage = { amount = 1.5 , type = "physical"}
        }
      }
    },
    durability = 1000,
    subgroup = "tool",
    order = "a[mining]-a[wooden-axe]",
    speed = 1.25,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "stone-axe",
    icon = "__DyTech-Tools__/graphics/icons/stone-axe.png",
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
            damage = { amount = 2.5 , type = "physical"}
        }
      }
    },
    durability = 2000,
    subgroup = "tool",
    order = "a[mining]-b[stone-axe]",
    speed = 2.5,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "copper-axe",
    icon = "__DyTech-Tools__/graphics/icons/copper-axe.png",
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
            damage = { amount = 4 , type = "physical"}
        }
      }
    },
    durability = 3000,
    subgroup = "tool",
    order = "a[mining]-c[copper-axe]",
    speed = 2,
    stack_size = 50
  },
  {
    type = "mining-tool",
    name = "advanced-steel-axe",
    icon = "__DyTech-Tools__/graphics/icons/advanced-steel-axe.png",
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
    durability = 7500,
    subgroup = "tool",
    order = "a[mining]-f[advanced-steel-axe]",
    speed = 6,
    stack_size = 50
  },
}
)

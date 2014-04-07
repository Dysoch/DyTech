data:extend(
{
  {
    type = "mining-tool",
    name = "tungsten-axe",
    icon = "__DyTech-Graphics__/graphics/icons/tungsten-axe.png",
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
    durability = 25000,
    subgroup = "tool",
    order = "s-a-2",
    speed = 6,
    stack_size = 32
  },
  {
    type = "mining-tool",
    name = "gemstone-axe",
    icon = "__DyTech-Graphics__/graphics/icons/gemstone-axe.png",
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
    durability = 15000,
    subgroup = "tool",
    order = "s-a-3",
    speed = 20,
    stack_size = 32
  },
  {
    type = "mining-tool",
    name = "wooden-axe",
    icon = "__DyTech-Graphics__/graphics/icons/wooden-axe.png",
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
            damage = { amount = 1 , type = "physical"}
        }
      }
    },
    durability = 1000,
    subgroup = "tool",
    order = "w-a",
    speed = 1.25,
    stack_size = 32
  },
}
)

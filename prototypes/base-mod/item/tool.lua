data:extend(
{
  {
    type = "mining-tool",
    name = "steel-axe2",
    icon = "__DyTech-Graphics__/graphics/icons/steel-axe2.png",
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
    durability = 7500,
    subgroup = "tool",
    order = "s-a-2",
    speed = 6,
    stack_size = 32
  },
  {
    type = "mining-tool",
    name = "steel-axe3",
    icon = "__DyTech-Graphics__/graphics/icons/steel-axe2.png",
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
    speed = 1,
    stack_size = 32
  },
}
)

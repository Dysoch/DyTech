data.raw["repair-tool"]["repair-pack"].order = "b[repair]-b[repair-pack]"

data:extend(
{
  {
    type = "item",
    name = "construction-robot-1",
    icon = "__MAIN-DyTech-Machine__/graphics/construction-robots/icon-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "k-b",
    place_result = "construction-robot-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "construction-robot-2",
    icon = "__MAIN-DyTech-Machine__/graphics/construction-robots/icon-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "k-b",
    place_result = "construction-robot-2",
    stack_size = 50
  },
  {
    type = "repair-tool",
    name = "repair-pack-0",
    icon = "__MAIN-DyTech-Machine__/graphics/construction-robots/repair-pack-0.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tool",
    order = "b[repair]-a[repair-pack-0]",
    speed = 0.5,
    durability = 25,
    stack_size = 50
  },
  {
    type = "repair-tool",
    name = "repair-pack-2",
    icon = "__MAIN-DyTech-Machine__/graphics/construction-robots/repair-pack-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tool",
    order = "b[repair]-c[repair-pack-2]",
    speed = 2,
    durability = 250,
    stack_size = 50
  },
  {
    type = "repair-tool",
    name = "repair-pack-3",
    icon = "__MAIN-DyTech-Machine__/graphics/construction-robots/repair-pack-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tool",
    order = "b[repair]-d[repair-pack-3]",
    speed = 3,
    durability = 500,
    stack_size = 50
  },
}
)
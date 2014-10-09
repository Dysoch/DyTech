data:extend(
{
  {
    type = "container",
    name = "tool-crafting-bench",
    icon = "__DyTech-Tools__/graphics/icons/tool-crafting-bench.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tool-crafting-bench"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
    picture =
    {
      filename = "__DyTech-Tools__/graphics/entity/crafting-bench/crafting-bench.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
}
)
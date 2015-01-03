data:extend(
{
  {
    type = "container",
    name = "dytech-item-collector",
    icon = "__DyTech-Core__/graphics/icons/dytechitem-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "dytech-item-collector"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
    picture =
    {
      filename = "__DyTech-Core__/graphics/entity/collector/dytechitem-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
}
)
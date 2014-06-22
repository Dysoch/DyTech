data:extend(
{
  {
    type = "logistic-container",
    name = "stone-collector",
    icon = "__DyTech-Logistic__/graphics/icons/stone-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "stone-collector"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
	logistic_mode = "provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/collector/stone-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
  --[[{
    type = "logistic-container",
    name = "sand-collector",
    icon = "__DyTech-Logistic__/graphics/icons/sand-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sand-collector"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
	logistic_mode = "provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/collector/sand-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },]]--
  {
    type = "logistic-container",
    name = "coal-collector",
    icon = "__DyTech-Logistic__/graphics/icons/coal-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "coal-collector"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
	logistic_mode = "provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/collector/coal-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
}
)
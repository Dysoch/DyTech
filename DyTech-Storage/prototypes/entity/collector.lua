data:extend(
{
  {
    type = "explosion",
    name = "item-pickup-dytech",
    animation_speed = 5,
    animations =
    {
      {
        filename = "__DyTech-Storage__/graphics/particles/blank.png",
        priority = "extra-high",
        frame_width = 16,
        frame_height = 16,
        frame_count = 16,
        line_length = 16
      }
    },
    light = {intensity = 1, size = 3},
    smoke = "smoke",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.ogg",
        volume = 0
      }
    }
  },
  {
    type = "container",
    name = "stone-collector-1",
    icon = "__DyTech-Storage__/graphics/icons/stone-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "stone-collector-1"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/collector/stone-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
  {
    type = "container",
    name = "sand-collector-1",
    icon = "__DyTech-Storage__/graphics/icons/sand-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sand-collector-1"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/collector/sand-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
  {
    type = "container",
    name = "coal-collector-1",
    icon = "__DyTech-Storage__/graphics/icons/coal-collector.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "coal-collector-1"},
    max_health = 20,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 25,
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/collector/coal-collector.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  },
}
)
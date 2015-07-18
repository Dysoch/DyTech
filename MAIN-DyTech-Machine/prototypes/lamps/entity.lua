data:extend(
{ 
  {
    type = "lamp",
    name = "small-lamp-1",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-lamp-1"},
    max_health = 55,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "7.5KW",
    light = {intensity = 0.9, size = 60},
    picture_off =
    {
      filename = "__base__/graphics/entity/small-lamp/light-off.png",
      priority = "high",
      width = 67,
      height = 58,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.078125, -0.03125},
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
      priority = "high",
      width = 62,
      height = 62,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.21875},
    },

    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.859375, -0.296875},
        green = {0.859375, -0.296875},
      },
      wire =
      {
        red = {0.40625, -0.59375},
        green = {0.40625, -0.59375},
      }
    },

    circuit_wire_max_distance = 7.5
  },
  {
    type = "lamp",
    name = "small-lamp-2",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-lamp-2"},
    max_health = 55,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "10KW",
    light = {intensity = 0.9, size = 80},
    picture_off =
    {
      filename = "__base__/graphics/entity/small-lamp/light-off.png",
      priority = "high",
      width = 67,
      height = 58,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.078125, -0.03125},
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
      priority = "high",
      width = 62,
      height = 62,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.21875},
    },

    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.859375, -0.296875},
        green = {0.859375, -0.296875},
      },
      wire =
      {
        red = {0.40625, -0.59375},
        green = {0.40625, -0.59375},
      }
    },

    circuit_wire_max_distance = 7.5
  },
}
)
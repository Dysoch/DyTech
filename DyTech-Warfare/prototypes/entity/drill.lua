data:extend(
{
  {
    type = "mining-drill",
    name = "basic-mining-drill-gem",
    icon = "__DyTech-Warfare__/graphics/icons/basic-mining-drill6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-gem"},
    max_health = 150,
    resource_categories = {"gemstones"},
    healing_per_tick = 0,25,
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/north6.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/east6.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/south6.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/west6.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 0.25,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.2 / 0.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "300kW",
    mining_power = 20,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    radius_visualisation_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      filename = "__DyTech-Warfare__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)
data:extend(
{ 
  {
    type = "mining-drill",
    name = "pumpjack-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk2"},
    resource_categories = {"basic-fluid"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 2.5,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "140kW",
    mining_speed = 1.5,
    mining_power = 3,
    resource_searching_radius = 0.99,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-base-2.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-animation-2.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  },
  {
    type = "mining-drill",
    name = "pumpjack-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk3"},
    resource_categories = {"basic-fluid"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 5,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "190kW",
    mining_speed = 2,
    mining_power = 4,
    resource_searching_radius = 1.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-base-3.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-animation-3.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  },
  {
    type = "mining-drill",
    name = "pumpjack-mk4",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk4"},
    resource_categories = {"basic-fluid"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 10,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "240kW",
    mining_speed = 3,
    mining_power = 5,
    resource_searching_radius = 1.99,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-base-4.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-animation-4.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  },
  {
    type = "mining-drill",
    name = "pumpjack-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pumpjack-mk5"},
    resource_categories = {"basic-fluid"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 20,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "300kW",
    mining_speed = 4,
    mining_power = 7,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 6
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-base-5.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-animation-5.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  },
}
)
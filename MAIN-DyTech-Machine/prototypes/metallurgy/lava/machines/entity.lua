data:extend(
{
  {
    type = "mining-drill",
    name = "geothermal-extractor",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "geothermal-extractor"},
    resource_categories = {"lava-magma"},
    max_health = 100,
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
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "90kW",
    mining_speed = 1,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_slots = 2,
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
        filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
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
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
  },
  {
    type = "furnace",
    name = "lava-heater",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/machines/liquid-handler.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lava-heater"},
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"lava-heater"},
    result_inventory_size = 1,
    energy_usage = "180kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      emissions = 0.02,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-0.5, 1.5} }}
      },
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_level = 100,
        pipe_connections = {{ position = {-0.5, -1.5} }},
        off_when_no_fluid_recipe = true
      }
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/lava-heater/steel-furnace.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05}
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          width = 36,
          height = 19,
          frame_count = 12,
          shift = { -0.05, 0.65}
        },
        light = {intensity = 1, size = 1}
      }
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "lava-heater-electric",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/machines/liquid-handler.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lava-heater-electric"},
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"lava-heater"},
    result_inventory_size = 1,
    energy_usage = "180kW",
    crafting_speed = 0.5,
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0075
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-0.5, 1.5} }}
      },
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_level = 100,
        pipe_connections = {{ position = {-0.5, -1.5} }},
        off_when_no_fluid_recipe = true
      }
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/lava-heater/steel-furnace.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05}
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          width = 36,
          height = 19,
          frame_count = 12,
          shift = { -0.05, 0.65}
        },
        light = {intensity = 1, size = 1}
      }
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "assembling-machine",
    name = "lava-cooler",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/machines/liquid-handler.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lava-cooler"},
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"lava-cooler"},
    result_inventory_size = 1,
    energy_usage = "180kW",
    ingredient_count = 2,
    crafting_speed = 0.5,
    source_inventory_size = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-0.5, 1.5} }}
      },
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_level = 100,
        pipe_connections = {{ position = {-0.5, -1.5} }},
        off_when_no_fluid_recipe = true
      }
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/lava-cooler/steel-furnace.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05}
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          width = 36,
          height = 19,
          frame_count = 12,
          shift = { -0.05, 0.65}
        },
        light = {intensity = 1, size = 1}
      }
    },
    fast_replaceable_group = "furnace"
  },
}
)
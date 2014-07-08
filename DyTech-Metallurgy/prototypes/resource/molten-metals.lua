data:extend(
{
  {
    type = "resource",
    name = "lava-600",
    icon = "__DyTech-Metallurgy__/graphics/fluid/lava-600.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-0600",
    infinite = true,
    minimum = 1000,
    normal = 25000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-600",
          amount_min = 1,
          amount_max = 2,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.8,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 5000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      filename = "__DyTech-Metallurgy__/graphics/entity/fluids/lava-600.png",
      priority = "extra-high",
      frame_width = 75,
      frame_height = 61,
      frame_count = 4,
      direction_count = 1
    },
    map_color = {r=72, g=60, b=50},
    map_grid = false
  },
  {
    type = "resource",
    name = "lava-1400",
    icon = "__DyTech-Metallurgy__/graphics/fluid/lava-1400.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-1400",
    infinite = false,
    minimum = 1000,
    normal = 25000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-1400",
          amount_min = 1,
          amount_max = 2,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.8,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 1000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      filename = "__DyTech-Metallurgy__/graphics/entity/fluids/lava-600.png",
      priority = "extra-high",
      frame_width = 75,
      frame_height = 61,
      frame_count = 4,
      direction_count = 1
    },
    map_color = {r=72, g=60, b=50},
    map_grid = false
  },
  {
    type = "resource",
    name = "lava-2800",
    icon = "__DyTech-Metallurgy__/graphics/fluid/lava-2800.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-2800",
    infinite = false,
    minimum = 1000,
    normal = 25000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-2800",
          amount_min = 1,
          amount_max = 2,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.8,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 1000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      filename = "__DyTech-Metallurgy__/graphics/entity/fluids/lava-600.png",
      priority = "extra-high",
      frame_width = 75,
      frame_height = 61,
      frame_count = 4,
      direction_count = 1
    },
    map_color = {r=72, g=60, b=50},
    map_grid = false
  },
}
)
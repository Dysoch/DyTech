data:extend(
{
  {
    type = "resource",
    name = "lava-600",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/lava-600.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-1",
    infinite = true,
    minimum = 10000,
    normal = 250000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-600",
          amount_min = 2,
          amount_max = 10,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.80,
      max_probability = 0.03,
      richness_multiplier = 1500000,
      richness_base = 200000,
      size_control_multiplier = 0.1,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.075,
          starting_area_weight_optimal = 0.4,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.54,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
	    filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/fluids/lava-600-new.png",
		priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=80, g=10, b=10},
    map_grid = false
  },
  {
    type = "resource",
    name = "lava-1400",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/lava-1400.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-2",
    infinite = false,
    minimum = 1000,
    normal = 250000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-1400",
          amount_min = 2,
          amount_max = 8,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.80,
      max_probability = 0.02,
      richness_multiplier = 1500000,
      richness_base = 150000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.075,
          starting_area_weight_optimal = 0.28,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.54,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
	    filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/fluids/lava-1400-new.png",
		priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=80, g=10, b=10},
    map_grid = false
  },
  {
    type = "resource",
    name = "lava-2800",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/lava-2800.png",
    flags = {"placeable-neutral"},
    category = "lava-magma",
    order = "lava-3",
    infinite = false,
    minimum = 1000,
    normal = 250000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "lava-2800",
          amount_min = 2,
          amount_max = 6,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "magma",
      sharpness = 0.80,
      max_probability = 0.01,
      richness_multiplier = 1500000,
      richness_base = 100000,
      size_control_multiplier = 0.05,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.075,
          starting_area_weight_optimal = 0.20,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.54,
          noise_layer = "lava",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
	    filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/fluids/lava-2800-new.png",
		priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=80, g=10, b=10},
    map_grid = false
  },
}
)
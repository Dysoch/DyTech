data:extend(
{
  {
    type = "resource",
    name = "super-ore",
    icon = "__base__/graphics/icons/stone.png",
    flags = {"placeable-neutral"},
    order="s-o",
    infinite = true,
    minimum = 500,
    normal = 75000,
    minable =
    {
      hardness = 2,
      mining_particle = "gem-particle",
      mining_time = 1,
      results =
      {
        {
          name = "iron-ore",
          amount_min = 1,
          amount_max = 3,
          probability = 0.1
        },
        {
          name = "copper-ore",
          amount_min = 1,
          amount_max = 3,
          probability = 0.1
        },
        {
          name = "coal",
          amount_min = 1,
          amount_max = 4,
          probability = 0.1
        },
        {
          name = "stone",
          amount_min = 1,
          amount_max = 6,
          probability = 0.3
        },
        {
          name = "sand",
          amount_min = 1,
          amount_max = 10,
          probability = 0.4
        },
      }
    },
    collision_box = {{ -1.0, -1.0}, {1.0, 1.0}},
    selection_box = {{ -1.0, -1.0}, {1.0, 1.0}},
    autoplace =
    {
      control = "gemstones",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 200000,
      richness_base = 25000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.01,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.067,
          noise_layer = "gems",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        },
        {
          influence = 0.0003,
          noise_layer = "sand",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.00045,
          noise_layer = "sand",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.002,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.002,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.002,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.002,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      }
    },
    stage_counts = {100000, 60000, 40000, 20000, 10000, 5000, 2000, 1000},
    stages =
    {
      filename = "__DyTech-Graphics__/graphics/entity/super-ore.png",
      priority = "extra-high",
      frame_width = 76,
      frame_height = 76,
      frame_count = 3,
      direction_count = 8
    },
    map_color = {r=1, g=1, b=1},
    map_grid = false
  },
}
)
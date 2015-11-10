data:extend(
{
  {
    type = "fluid",
    name = "lava",
    default_temperature = 500,
    max_temperature = 5000,
    heat_capacity = "600J",
    base_color = {r=254, g=42, b=1},
    flow_color = {r=255, g=79, b=0},
    icon = "__MAIN-DyTech-Metallurgy__/graphics/lava/lava.png",
    order = "lava",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "dytech-metallurgy-fluids",
  },
  {
    type = "resource",
    name = "lava",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/lava/lava.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
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
          name = "lava",
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
	    filename = "__MAIN-DyTech-Metallurgy__/graphics/lava/lava-resource.png",
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
    type = "noise-layer",
    name = "lava"
  }
}
)
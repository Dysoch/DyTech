data:extend(
{
  {
	type = "resource",
	name = "gold-ore",
	icon = "__OreTech__/graphics/gold-icon.png",
	flags = {"placeable-neutral"},
	order= "z-o",
	minable = 
	{
	  hardness = 0.9,
	  mining_particle = "sand-particle",
	  mining_time = 2,
	  result = "gold-ore"
	},
	collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	autoplace =
    {
      control = "gold-ore",
      sharpness = 1.5,
      richness_multiplier = 11000,
      richness_base = 5,
      size_control_multiplier = 0.08,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.3,
          starting_area_weight_optimal = -1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,
          noise_layer = "gold-ore",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.8,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.57,
          noise_layer = "gold-ore",
          noise_octaves_difference = -2.2,
          noise_persistence = 0.9,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {600, 500, 400, 300, 200, 100, 40, 20},
	stages = 
	{
	  filename = "__OreTech__/graphics/gold-ore.png",
	  priority = "extra-high",
	  frame_width = 38,
	  frame_height = 38,
	  frame_count = 3,
	  direction_count = 8
	},
    map_color = { r = 1, g = 0.9, b = 0.2 }
  }
}
)
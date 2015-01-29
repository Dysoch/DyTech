data:extend(
{
  {
	type = "resource",
	name = "zinc-ore",
	icon = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/ore-icon.png",
	flags = {"placeable-neutral"},
	order= "z-o",
	minable = 
	{
	  hardness = 0.9,
	  mining_particle = "stone-particle",
	  mining_time = 2,
	  result = "zinc-ore"
	},
	collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	autoplace =
    {
      control = "metallurgy-ores",
      sharpness = 0.85,
      max_probability = 0.06,
      richness_multiplier = 14000,
      richness_base = 11,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0.3,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.6,
          noise_layer = "zinc-ore",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.65,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.275,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.6,
          noise_layer = "zinc-ore",
          noise_octaves_difference = -2.2,
          noise_persistence = 0.75,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {1000, 750, 500, 400, 200, 100, 50, 20},
	stages = 
	{
	  filename = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/ore.png",
	  priority = "extra-high",
	  width = 38,
	  height = 38,
	  frame_count = 3,
	  direction_count = 8
	},
    map_color = { r = 217, g = 216, b = 155 }
  }
}
)
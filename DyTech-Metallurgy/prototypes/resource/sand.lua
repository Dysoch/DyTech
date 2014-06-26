data:extend(
{
  {
	type = "particle",
	name = "sand-particle",
	flags = {},
	life_time = 180,
	pictures = {
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-1.png",
		priority = "extra-high",
		frame_width = 5,
		frame_height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-2.png",
		priority = "extra-high",
		frame_width = 7,
		frame_height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-3.png",
		priority = "extra-high",
		frame_width = 6,
		frame_height = 7,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-4.png",
		priority = "extra-high",
		frame_width = 9,
		frame_height = 8,
		frame_count = 1
	  }
	},
	shadows = 
	{
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-shadow-1.png",
		priority = "extra-high",
		frame_width = 5,
		frame_height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-shadow-2.png",
		priority = "extra-high",
		frame_width = 7,
		frame_height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-shadow-3.png",
		priority = "extra-high",
		frame_width = 6,
		frame_height = 7,
		frame_count = 1
   	  },
	  {
		filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand-particle-shadow-4.png",
		priority = "extra-high",
		frame_width = 9,
		frame_height = 8,
		frame_count = 1
	  }
	}
  },
  {
	type = "resource",
	name = "sand",
	icon = "__DyTech-Metallurgy__/graphics/icons/sand.png",
	flags = {"placeable-neutral"},
	order= "s",
	minable = 
	{
	  hardness = 0.1,
	  mining_particle = "sand-particle",
	  mining_time = 0.5,
	  result = "sand"
	},
	collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
	  control = "sand",
	  sharpness = 0.8,
	  richness_multiplier = 75000,
	  richness_base = 5000,
	  peaks = 
	  {
		{
          influence = 0,
          richness_influence = 1.2,
          noise_layer = "random"
        },
		{
		  influence = 0.21,
		  starting_area_weight_optimal = 0,
		  starting_area_weight_range = 0,
		  starting_area_weight_max_range = 2,
		},
		{
		  influence = 0.3,
		  starting_area_weight_optimal = 1,
		  starting_area_weight_range = 0,
		  starting_area_weight_max_range = 2,
		},
		{
		  influence = 0.65,
		  noise_layer = "sand",
		  noise_octaves_difference = -1.9,
		  noise_persistence = 0.4,
		  starting_area_weight_optimal = 0,
		  starting_area_weight_range = 0,
		  starting_area_weight_max_range = 2,
		},
		{
		  influence = 0.55,
		  noise_layer = "sand",
		  noise_octaves_difference = -2.3,
		  noise_persistence = 0.4,
		  starting_area_weight_optimal = 1,
		  starting_area_weight_range = 0,
		  starting_area_weight_max_range = 2,
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
		  noise_layer = "copper-ore",
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
		{
		  influence = -0.2,
		  max_influence = 0,
		  noise_layer = "stone",
		  noise_octaves_difference = -3,
		  noise_persistence = 0.45,
		},
	  },
	},
	stage_counts = {100000, 60000, 40000, 20000, 10000, 5000, 2000, 1000},
	stages = 
	{
	  filename = "__DyTech-Metallurgy__/graphics/entity/sand/sand.png",
	  priority = "extra-high",
	  frame_width = 38,
	  frame_height = 38,
	  frame_count = 3,
	  direction_count = 8
	},
    map_color = { r = 0.76, g = 0.69, b = 0.5 }
  }
}
)
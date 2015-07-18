data:extend(
{
  {
	type = "resource",
	name = "tungsten-ore",
	icon = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/ore-icon.png",
	flags = {"placeable-neutral"},
	order= "z-o",
	minable = 
	{
	  hardness = 2.9,
	  mining_particle = "stone-particle",
	  mining_time = 2,
	  result = "tungsten-ore"
	},
	collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	autoplace =
    {
      control = "tungsten-ore",
      sharpness = 0.85,
      max_probability = 0.12,
      richness_multiplier = 14000,
      richness_base = 11,
      size_control_multiplier = 0.12,
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = 0.27,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -10.3,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.426,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.5,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "iron-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "copper-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "gold-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "silver-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "lead-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "tin-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
		{
		  influence = -0.99, -- Negative influence reduces value near iron
		  max_influence = 0, -- Max of 0 stops copper from generating on iron
		  noise_layer = "zinc-ore", -- Noise layer determines what to avoid
		  noise_octaves_difference = -2.3, -- Increased effect further from start to match irons own increase
		  noise_persistence = 0.45,
		},
        {
          influence = 0.725,
          noise_layer = "ardite-ore",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.8,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.627,
          noise_layer = "cobalt-ore",
          noise_octaves_difference = -2.2,
          noise_persistence = 0.9,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.627,
          noise_layer = "tungsten-ore",
          noise_octaves_difference = -2.2,
          noise_persistence = 0.9,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
      }
    },
    stage_counts = {1000, 750, 500, 400, 200, 100, 50, 20},
    stages =
    {
      sheet =
      {
	    filename = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/ore.png",
		priority = "extra-high",
		width = 38,
		height = 38,
		frame_count = 3,
        variation_count = 8
      }
    },
    map_color = { r = 0.0, g = 0.0, b = 0.4 }
  }
}
)
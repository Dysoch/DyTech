data:extend(
{
  {
	type = "particle",
	name = "gem-particle",
	flags = {},
	life_time = 180,
	pictures = {
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-1.png",
		priority = "extra-high",
		width = 5,
		height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-2.png",
		priority = "extra-high",
		width = 7,
		height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-3.png",
		priority = "extra-high",
		width = 6,
		height = 7,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-4.png",
		priority = "extra-high",
		width = 9,
		height = 8,
		frame_count = 1
	  }
	},
	shadows = 
	{
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-shadow-1.png",
		priority = "extra-high",
		width = 5,
		height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-shadow-2.png",
		priority = "extra-high",
		width = 7,
		height = 5,
		frame_count = 1
	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-shadow-3.png",
		priority = "extra-high",
		width = 6,
		height = 7,
		frame_count = 1
   	  },
	  {
		filename = "__DyTech-Warfare__/graphics/entity/gem/gem-particle-shadow-4.png",
		priority = "extra-high",
		width = 9,
		height = 8,
		frame_count = 1
	  }
	}
  },
  {
    type = "resource",
    name = "gems",
    icon = "__DyTech-Warfare__/graphics/icons/diamond-1.png",
    flags = {"placeable-neutral"},
	category = "gemstones",
    order="g",
    infinite = false,
    minable =
    {
      hardness = 15,
      mining_particle = "gem-particle",
      mining_time = 10,
      results =
      {
        {
          name = "ruby-ore",
          amount_min = 1,
          amount_max = 4,
          probability = 0.1
        },
        {
          name = "sapphire-ore",
          amount_min = 1,
          amount_max = 3,
          probability = 0.1
        },
        {
          name = "emerald-ore",
          amount_min = 1,
          amount_max = 3,
          probability = 0.1
        },
        {
          name = "topaz-ore",
          amount_min = 1,
          amount_max = 2,
          probability = 0.1
        },
        {
          name = "diamond-ore",
          amount_min = 1,
          amount_max = 1,
          probability = 0.1
        },
		{
          name = "ruby-orex",
          amount_min = 1,
          amount_max = 4,
          probability = 0.2
        },
        {
          name = "sapphire-orex",
          amount_min = 1,
          amount_max = 3,
          probability = 0.2
        },
        {
          name = "emerald-orex",
          amount_min = 1,
          amount_max = 3,
          probability = 0.2
        },
        {
          name = "topaz-orex",
          amount_min = 1,
          amount_max = 2,
          probability = 0.2
        },
        {
          name = "diamond-orex",
          amount_min = 1,
          amount_max = 1,
          probability = 0.2
        },
      }
    },
    collision_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "gemstones",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 2000,
      richness_base = 25,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "gems",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        },
        {
          influence = 0.003,
          noise_layer = "sand",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.0045,
          noise_layer = "sand",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.02,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.02,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.02,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.02,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      }
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 10},
    stages =
    {
      filename = "__DyTech-Warfare__/graphics/entity/gem/gemstone-deposit.png",
      priority = "extra-high",
      width = 38,
      height = 38,
      frame_count = 3,
      direction_count = 8
    },
    map_color = {r=1, g=1, b=1},
    map_grid = false
  },
}
)
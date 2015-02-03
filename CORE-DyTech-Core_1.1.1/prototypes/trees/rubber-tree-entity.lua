data:extend(
{
  {
	type = "tree",
	name = "rubber-seed",
	icon = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-1.png",
	order = "b-b-g",
	flags = {"placeable-neutral", "breaths-air"},
	emissions_per_tick = -0.0001,
	minable =
	{
	  count = 1,
	  mining_particle = "wooden-particle",
	  mining_time = 0.1,
	  result = "rubber-seed"
	},
	max_health = 10,
	collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
	selection_box = {{-0.1, -0.1}, {0.1, 0.1}},
	drawing_box = {{0.0, 0.0}, {1.0, 1.0}},
	pictures =
	{
	  {
		filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-1.png",
		priority = "extra-high",
		width = 32,
		height = 32,
		shift = {0.0, 0.0}
      }
	}
  },
  {
	type = "tree",
	name = "small-rubber-tree",
	icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
	order = "b-b-g",
	flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
	emissions_per_tick = -0.01,
	minable =
	{
	  count = 2,
	  mining_particle = "wooden-particle",
	  mining_time = 0.3,
	  result = "rubber-seed"
	},
	max_health = 20,
	collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
	selection_box = {{-0.2, -0.55}, {0.2, 0.2}},
	drawing_box = {{-0.2, -0.7}, {0.2, 0.2}},
	pictures =
	{
	  {
		filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-2.png",
		priority = "extra-high",
		width = math.floor(155/4),
		height = math.floor(118/4),
		shift = {1.1/4, -1/4}
	  }
	} 
  },
  {
	type = "tree",
	name = "medium-rubber-tree",
	icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
	order = "b-b-g",
	flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
	emissions_per_tick = -0.005,
	minable =
	{
	  count = 3,
	  mining_particle = "wooden-particle",
	  mining_time = 0.6,
	  result = "rubber-seed"
	},
	max_health = math.floor(50*0.75),
	collision_box = {{-0.7*0.75, -0.8*0.75}, {0.7*0.75, 0.8*0.75}},
	selection_box = {{-0.8*0.75, -2.2*0.75}, {0.8*0.75, 0.8*0.75}},
	drawing_box = {{-0.8*0.75, -2.8*0.75}, {0.8*0.75, 0.8*0.75}},
	pictures =
	{
	  {
		filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-3.png",
		priority = "extra-high",
		width = math.floor(155*0.75),
		height = math.floor(118*0.75),
		shift = {1.1*0.75, -1*0.75}
	  }
	}
  },
  {
	type = "tree",
	name = "mature-rubber-tree",
	icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
	order = "b-b-h",
	flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
	emissions_per_tick = -0.002,
	minable =
	{
	  count = 3,
	  mining_particle = "wooden-particle",
	  mining_time = 1,
	  result = "resin"
	},
	max_health = 50,
	collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
	selection_box = {{-0.8, -2.2}, {0.8, 0.8}},
	drawing_box = {{-0.8, -2.8}, {0.8, 0.8}},
	pictures =
	{
	  {
		filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-4.png",
		priority = "extra-high",
		width = 155,
		height = 118,
		shift = {1.1, -1}
	  }
	}
  }
}
)
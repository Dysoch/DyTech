data:extend(
{
  {
    type = "generator",
    name = "nuclear-reactor",
    icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 4, result = "nuclear-reactor"},
    max_health = 1000,
    corpse = "big-remnants",
	effectivity = 1,
	fluid_usage_per_tick = 0.08,
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3, -3}, {3, 3}},
	fluid_box =
	{
		base_area = 1,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{ position = {0, 3.5} },
			{ position = {0, -3.5} },
			{ position = {3.5, 0} },
			{ position = {-3.5, 0} },
		},
	},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    --[[picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
      priority = "high",
      width = 208,
      height = 192
    },]]--
	horizontal_animation =
	{
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
		width = 208,
		height = 192,
		frame_count = 1,
		line_length = 1,
		shift = {0, 0}
	},
	vertical_animation =
	{
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
		width = 208,
		height = 192,
		frame_count = 1,
		line_length = 1,
		shift = {0, 0}
	},		
    --production = "10MW"
  }
}
)
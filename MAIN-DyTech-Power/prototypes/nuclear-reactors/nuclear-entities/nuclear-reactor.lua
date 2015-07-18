data:extend(
{
  {
	--Don't mind me:
	--/c game.player.insert{name="nuclear-reactor",count=1}
    type = "boiler",
    name = "nuclear-reactor",
    icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 4, result = "nuclear-reactor"},
    max_health = 1000,
    corpse = "big-remnants",
	resistances =
	{
		{
			type = "fire",
			precent = 100
		}
	},
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fluid_box =
	{
		base_area = 5,
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{ position = {0, 3} },
			{ position = {0, -3} },
			{ position = {3, 0} },
			{ position = {-3, 0} },
		},
	},
	energy_consumption = "1kW",
	burner =
	{
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions = 0,
	},
	fire =
	{
	  left = boilerfires.down,
      down = boilerfires.left,
      left_down = boilerfires.right,
      right_down = boilerfires.left,
      left_up = boilerfires.down,
      right_up = boilerfires.down,
      t_up = boilerfires.down
	},
	burning_cooldown = 20,
	structure =
	{
		left =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		down =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		left_down =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		right_down =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		left_up =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		right_up =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		t_down =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		},
		t_up =
		{
			filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
			priority = "high",
			width = 160,
			height = 160,
			--shift = {0.05, -1.18}
		}
    }
 },
	{
		type = "container",
		name = "nuclear-reactor-container",
		icon = "__base__/graphics/icons/wooden-chest.png",
		flags = {"placeable-neutral", "player-creation"},
		mineable = {mining_time = 1, result = ""},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		fast_replaceable_group = "container",
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		inventory_size = 1,
		open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
		close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
		picture =
		{
			filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
			priority = "extra-high",
			width = 46,
			height = 33,
			shift = {0.3, 0}
		}
	},
		{
		type = "container",
		name = "nuclear-reactor-output-container",
		icon = "__base__/graphics/icons/wooden-chest.png",
		flags = {"placeable-neutral", "player-creation"},
		mineable = {mining_time = 1, result = ""},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		fast_replaceable_group = "container",
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		inventory_size = 1,
		open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
		close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
		picture =
		{
			filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
			priority = "extra-high",
			width = 46,
			height = 33,
			shift = {0.3, 0}
		}
	}
}
)












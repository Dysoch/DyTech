data:extend(
{
  {
    type = "container",
    name = "wooden-chest-medium",
    icon = "__base__/graphics/icons/wooden-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "wooden-chest-medium"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "container-medium",
    inventory_size = 40,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/wooden-chest-medium.png",
      priority = "extra-high",
      width = 92,
      height = 66,
      shift = {0.4, 0}
    }
  },
  {
    type = "container",
    name = "iron-chest-medium",
    icon = "__base__/graphics/icons/iron-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "iron-chest-medium"},
    max_health = 100,
    corpse = "medium-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "container-medium",
    inventory_size = 80,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/iron-chest-medium.png",
      priority = "extra-high",
      width = 96,
      height = 68,
      shift = {0.4, 0}
    }
  },
  {
    type = "container",
    name = "steel-chest-medium",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steel-chest-medium"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "container-medium",
    inventory_size = 120,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/steel-chest-medium.png",
      priority = "extra-high",
      width = 96,
      height = 68,
      shift = {0.4, 0}
    }
  },
  {
    type = "container",
    name = "wooden-chest-big",
    icon = "__base__/graphics/icons/wooden-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "wooden-chest-big"},
    max_health = 50,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "container-big",
    inventory_size = 80,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/wooden-chest-big.png",
      priority = "extra-high",
      width = 138,
      height = 99,
      shift = {0.8, 0}
    }
  },
  {
    type = "container",
    name = "iron-chest-big",
    icon = "__base__/graphics/icons/iron-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "iron-chest-big"},
    max_health = 100,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "container-big",
    inventory_size = 160,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/iron-chest-big.png",
      priority = "extra-high",
      width = 144,
      height = 102,
      shift = {0.8, 0}
    }
  },
  {
    type = "container",
    name = "steel-chest-big",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steel-chest-big"},
    max_health = 200,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "container-big",
    inventory_size = 240,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__DyTech-Storage__/graphics/entity/chest/steel-chest-big.png",
      priority = "extra-high",
      width = 144,
      height = 102,
      shift = {0.8, 0}
    }
  },
  {
	type = "container",
	name = "compression-chest",
	icon = "__DyTech-Storage__/graphics/icons/compression-chest.png",
	flags = {"placeable-neutral", "player-creation"},
	open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
	close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
	minable = {mining_time = 3, result = "compression-chest", count = 0},
	max_health = 800,
	corpse = "small-remnants",
	resistances = 
	{
	  {
		type = "fire",
		percent = 100
	  }
	},
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	inventory_size = 1,
	order = "a[items]-d[compression-chest]",
	subgroup = "storage",
	picture =
	{
	  filename = "__DyTech-Storage__/graphics/entity/compression/Compression Chest.png",
	  priority = "extra-high",
	  width = 52,
	  height = 34,
	  shift = {0.2625, 0}
 	}
  },
  {
	type = "accumulator",
	name = "compression-power-pole-field",
	icon = "__DyTech-Storage__/graphics/icons/compression-power.png",
	flags = {"placeable-neutral", "player-creation"},
	max_health = 75,
	corpse = "small-remnants",
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	energy_source =
	{
		type = "electric",
		buffer_capacity = "4MJ",
		usage_priority = "primary-input",
		input_flow_limit = "5000kW",
		output_flow_limit = "0kW"
	},
	picture =
	{
		filename = "__DyTech-Storage__/graphics/entity/compression/Compression - power - field.png",
		priority = "extra-high",
		width = 160,
		height = 160,
	},
	charge_cooldown = 45,
	discharge_cooldown = 90,
	order="s[accu]-t1",
	subgroup = "production-machine"
  },
  {
	type = "accumulator",
	name = "compression-power-pole",
	icon = "__DyTech-Storage__/graphics/icons/compression-power.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "compression-power-pole"},
	max_health = 75,
	corpse = "small-remnants",
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	energy_source =
	{
		type = "electric",
		buffer_capacity = "4MJ",
		usage_priority = "primary-input",
		input_flow_limit = "5000kW",
		output_flow_limit = "0kW"
	},
	picture =
	{
		filename = "__DyTech-Storage__/graphics/entity/compression/Compression - power.png",
		priority = "extra-high",
		width = 72,
		height = 62,
		shift = {0.49145, -0.25}
	},
	charge_animation =
	{
		filename = "__DyTech-Storage__/graphics/entity/compression/Compression - power - charging.png",
		frame_width = 72,
		frame_height = 62,
		line_length = 1,
		frame_count = 1,
		shift = {0.49145, -0.25},
		animation_speed = 0
	},
	charge_cooldown = 45,
	discharge_cooldown = 90,
	order="s[accu]-t1",
	subgroup = "production-machine"
  },
  {
	type = "container",
	name = "reset-compression-chests",
	icon = "__DyTech-Storage__/graphics/icons/compression-chest.png",
	flags = {"placeable-neutral", "player-creation"},
	max_health = 800,
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	inventory_size = 1,
	order = "a[items]-d[compression-chest]",
	picture =
	{
		filename = "__DyTech-Storage__/graphics/entity/compression/Compression Chest.png",
		priority = "extra-high",
		width = 52,
		height = 34,
		shift = {0.2625, 0}
	}
  }
}
)
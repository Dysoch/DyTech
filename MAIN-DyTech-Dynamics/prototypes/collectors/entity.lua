data:extend(
{
  {
    type = "logistic-container",
	name = "item-collector-area",
	icon = "__MAIN-DyTech-Dynamics__/graphics/smart-chest-icon.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 0.5, result = "item-collector-area"},
	max_health = 150,
	corpse = "small-remnants",
	resistances = 
	{
	  {
		type = "fire",
		percent = 70
	  }
	},
	collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	order = "i[items]-i[item-collector]",
	subgroup = "storage",
	fast_replaceable_group = "container",
    logistic_mode = "passive-provider",
	inventory_size = 50,
	open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
	close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
	picture =
	{
	  filename = "__MAIN-DyTech-Dynamics__/graphics/smart-chest.png",
	  priority = "extra-high",
	  width = 62,
	  height = 41,
	  shift = {0.4, -0.13}
	}
  },
})
data:extend(
{
  {
	type = "assembling-machine",
	name = "chemical-processor",
	icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/centrifuge_icon.png",
	flags = {"placeable-neutral","placeable-player","player-creation"},
	minable = {hardness = 1, mining_time = 3, result = "chemical-processor"},
	max_health = 250,
	corpse = "big-remnants",
	dying_explosion = "huge-explosion",
	collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	module_slots = 1,
	allowed_effects = {"speed", "pollution"},
	animation =
	{
	  north =
	  {
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/centrifuge_v.png",
		width = 160,
		height = 160,
		frame_count = 1,
	  },
	  west =
	  {
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/centrifuge_h.png",
		width = 160,
		height = 160,
		frame_count = 1,
	  },
	  south =
	  {
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/centrifuge_v.png",
		width = 160,
		height = 160,
		frame_count = 1,
	  },
	  east =
	  {
		filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/centrifuge_h.png",
		width = 160,
		height = 160,
		frame_count = 1,
	  },
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "secondary-input",
	  emissions = 0.04 / 2.5
	},
	crafting_speed = 1,
	energy_usage = "250kW",
	crafting_categories = {"nuclear-recipe"},
	ingredient_count = 3,
	fluid_boxes =
	{
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      },
	}
  }
})
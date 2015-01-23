data:extend(
{
  {
    type = "furnace",
    name = "forge",
	icon = "__[MAIN]DyTech-Machine__/graphics/metallurgy/icons/forge.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness= 0.2, mining_time= 0.5, result= "forge"},
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.3, size = 10},
    crafting_categories = {"forge"},
    max_health = 1500,
    energy_usage = "75kW",
    crafting_speed = 1,
    module_slots = 5,
    allowed_effects = {"consumption", "speed", "pollution"},
    source_inventory_size = 5,
    result_inventory_size = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__[MAIN]DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/forge.png",
      priority = "medium",
      width = 113,
      height = 91,
      line_length = 11,
      frame_count = 33,
      shift = {0.2, 0}
    },
	fluid_boxes =
	{
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      }, 
	  {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      }, 
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,-2} }}
      }, 
	  {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,2} }}
      }, 
	},
  },
  {
    type = "furnace",
    name = "blast-furnace",
	icon = "__[MAIN]DyTech-Machine__/graphics/metallurgy/icons/blast-furnace.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "blast-furnace"},
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    light = {intensity = 2, size = 25},
    crafting_categories = {"blast-furnace"},
    max_health = 1500,
    energy_usage = "150kW",
	crafting_speed = 1,
    module_slots = 5,
    allowed_effects = {"consumption", "speed", "pollution"},
    source_inventory_size = 2,
    result_inventory_size = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__[MAIN]DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/blast-furnace.png",
      priority = "medium",
      width = 212,
      height = 180,
      line_length = 5,
      frame_count = 16,
	  shift = {0.8, 0.18}
    },
	fluid_boxes =
	{
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, 1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, -1} }}
      }, 
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,-1} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1,3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1,3} }}
      },
	},
  },
}
)
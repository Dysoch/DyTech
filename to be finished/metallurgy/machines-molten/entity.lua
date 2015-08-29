data:extend(
{
  {
    type = "assembling-machine",
    name = "forge",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/forge.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness= 0.2, mining_time= 0.5, result= "forge"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"forge"},
    fast_replaceable_group = "forge",
    max_health = 1500,
    energy_usage = "75kW",
    crafting_speed = 1,
    module_specification =
    {
      module_slots = 5
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/forge.png",
      priority = "medium",
      width = 113,
      height = 91,
      line_length = 11,
      frame_count = 33,
      shift = {0.2, 0},
	  scale = 1.7
    },
	fluid_boxes =
	{
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, -2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 2} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,-2} }}
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
  {
    type = "assembling-machine",
    name = "blast-furnace",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/blast-furnace.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "blast-furnace"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"blast-furnace"},
    fast_replaceable_group = "blast-furnace",
    max_health = 1500,
    energy_usage = "150kW",
	crafting_speed = 1,
    module_specification =
    {
      module_slots = 5
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/blast-furnace.png",
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
  {
    type = "assembling-machine",
    name = "forge-1",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/forge.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness= 0.2, mining_time= 0.5, result= "forge-1"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"forge"},
    fast_replaceable_group = "forge",
    max_health = 1500,
    energy_usage = "150kW",
    crafting_speed = 2.5,
    module_specification =
    {
      module_slots = 7
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/forge.png",
      priority = "medium",
      width = 113,
      height = 91,
      line_length = 11,
      frame_count = 33,
      shift = {0.2, 0},
	  scale = 1.7
    },
	fluid_boxes =
	{
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, -2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 2} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,-2} }}
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
  {
    type = "assembling-machine",
    name = "blast-furnace-1",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/blast-furnace.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "blast-furnace-1"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"blast-furnace"},
    fast_replaceable_group = "blast-furnace",
    max_health = 1500,
    energy_usage = "300kW",
	crafting_speed = 2.5,
    module_specification =
    {
      module_slots = 7
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/blast-furnace.png",
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
  {
    type = "assembling-machine",
    name = "forge-2",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/forge.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness= 0.2, mining_time= 0.5, result= "forge-2"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"forge"},
    fast_replaceable_group = "forge",
    max_health = 1500,
    energy_usage = "225kW",
    crafting_speed = 5,
    module_specification =
    {
      module_slots = 10
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/forge.png",
      priority = "medium",
      width = 113,
      height = 91,
      line_length = 11,
      frame_count = 33,
      shift = {0.2, 0},
	  scale = 1.7
    },
	fluid_boxes =
	{
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, -2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-3, 2} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {3,-2} }}
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
  {
    type = "assembling-machine",
    name = "blast-furnace-2",
	icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/blast-furnace.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "blast-furnace-2"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"blast-furnace"},
    fast_replaceable_group = "blast-furnace",
    max_health = 1500,
    energy_usage = "450kW",
	crafting_speed = 5,
    module_specification =
    {
      module_slots = 10
    },
    ingredient_count = 15,
    allowed_effects = {"consumption", "speed", "pollution"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/metallurgy/entity/metallurgy-machines/blast-furnace.png",
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
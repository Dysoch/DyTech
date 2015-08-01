data:extend(
{
  {
    type = "logistic-container",
    name = "logistic-chest-requester-medium",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-requester-medium"},
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
	fast_replaceable_group =  "container-medium",
    inventory_size = 120,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-requester-medium.png",
      priority = "extra-high",
      width = 78,
      height = 64,
      shift = {0.2, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-medium",
    icon = "__base__/graphics/icons/logistic-chest-storage.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-storage-medium"},
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
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-storage-medium.png",
      priority = "extra-high",
      width = 76,
      height = 64,
      shift = {0.2, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-medium",
    icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-active-provider-medium"},
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
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-active-provider-medium.png",
      priority = "extra-high",
      width = 78,
      height = 64,
      shift = {0.2, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-medium",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-passive-provider-medium"},
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
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-passive-provider-medium.png",
      priority = "extra-high",
      width = 78,
      height = 66,
      shift = {0.2, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-big",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-requester-big"},
    max_health = 200,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "container-big",
    inventory_size = 240,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-requester-big.png",
      priority = "extra-high",
      width = 117,
      height = 96,
      shift = {0.3, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-big",
    icon = "__base__/graphics/icons/logistic-chest-storage.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-storage-big"},
    max_health = 200,
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
    inventory_size = 240,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-storage-big.png",
      priority = "extra-high",
      width = 114,
      height = 96,
      shift = {0.3, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-big",
    icon = "__base__/graphics/icons/steel-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-active-provider-big"},
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
    logistic_mode = "active-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-active-provider-big.png",
      priority = "extra-high",
      width = 117,
      height = 96,
      shift = {0.3, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-big",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-chest-passive-provider-big"},
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
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/logistic-chest-passive-provider-big.png",
      priority = "extra-high",
      width = 116,
      height = 99,
      shift = {0.3, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "smart-container",
    name = "smart-chest-medium",
    icon = "__base__/graphics/icons/smart-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "smart-chest-medium"},
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
      filename = "__MAIN-DyTech-Machine__/graphics/chests/smart-chest-medium.png",
      priority = "extra-high",
      width = 124,
      height = 82,
      shift = {0.9, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {2.3, 0.9},
        green = {2.3, 0.9}
      },
      wire =
      {
        red = {0.6, -1.2},
        green = {0.6, -1.2}
      }
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "smart-container",
    name = "smart-chest-big",
    icon = "__base__/graphics/icons/smart-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "smart-chest-big"},
    max_health = 200,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "container-big",
    inventory_size = 240,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/chests/smart-chest-big.png",
      priority = "extra-high",
      width = 186,
      height = 123,
      shift = {1.3, 0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {3.7, 1.9},
        green = {3.7, 1.9}
      },
      wire =
      {
        red = {0.8, -1.8},
        green = {0.8, -1.8}
      }
    },
    circuit_wire_max_distance = 7.5
  },
}
)

LogisticMk1 = {r=1, g=0.843, b=0, a=0.9}
LogisticMk2 = {r=0, g=0, b=0.804, a=0.9}

data:extend(
{
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-passive-provider-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-passive-provider-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "passive-provider",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-passive-provider-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-active-provider-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-active-provider-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "active-provider",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-active-provider-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-storage-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-storage-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "storage",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-storage-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-requester-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-requester-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "requester",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-requester-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-passive-provider-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-passive-provider-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "passive-provider",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-passive-provider-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-active-provider-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-active-provider-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "active-provider",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-active-provider-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-storage-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-storage-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "storage",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-storage-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-requester-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-requester-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "requester",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-requester-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-one",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/logistic-chest-storage-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-storage-one"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 1,
    logistic_mode = "storage",
    picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/logistic-chest-storage-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },
}
)

require "prototypes.internal-config"
require "prototypes.functions.miners"

Mk1 = {r=0.804, g=0.361, b=0.361, a=0.99}
Mk2 = {r=1, g=0.627, b=0.478, a=0.99}
Mk3 = {r=0.753, g=0.753, b=0.753, a=0.99}
Mk4 = {r=1, g=0.078, b=0.576, a=0.99}
Mk5 = {r=1, g=0.843, b=0, a=0.99}
Mk6 = {r=0.529, g=0.808, b=0.980, a=0.99}

data.raw["mining-drill"]["basic-mining-drill"].icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png"
data.raw["mining-drill"]["basic-mining-drill"].max_health = Health.Tier3
data.raw["mining-drill"]["basic-mining-drill"].resistances = Resistances.Tier3 
data.raw["mining-drill"]["basic-mining-drill"].animations = Animation_Miner(Mk1)
data.raw["mining-drill"]["basic-mining-drill"].fast_replaceable_group =  "drill"

data:extend(
{
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk2"},
    max_health = Health.Tier5,
    resistances = Resistances.Tier5,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations = Animation_Miner(Mk2),
    mining_speed = 1.25,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.35 / 3.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "180kW",
    mining_power = 4,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
	radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk3"},
    max_health = Health.Tier6,
    resistances = Resistances.Tier6,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations = Animation_Miner(Mk3),
    mining_speed = 2.5,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.3 / 2.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "275kW",
    mining_power = 5,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk4",
	fast_replaceable_group =  "drill",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk4"},
    max_health = Health.Tier7,
    resistances = Resistances.Tier7,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations = Animation_Miner(Mk4),
    mining_speed = 4,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.3 / 2,
      usage_priority = "secondary-input",
    },
    energy_usage = "450kW",
    mining_power = 7.5,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk5"},
    max_health = Health.Tier8,
    resistances = Resistances.Tier8,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations = Animation_Miner(Mk5),
    mining_speed = 6.5,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.25 / 1.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "750kW",
    mining_power = 10,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk6",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk6"},
    max_health = Health.Tier10,
    resistances = Resistances.Tier10,
    resource_categories = {"basic-solid"},
    healing_per_tick = 0,25,
	corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations = Animation_Miner(Mk6),
    mining_speed = 30,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "10000kW",
    mining_power = 25,
    resource_searching_radius = 49.49,
    vector_to_place_result = {0, -1.85},
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)
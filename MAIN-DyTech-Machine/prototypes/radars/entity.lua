require "config"

data.raw["radar"]["radar"].fast_replaceable_group =  "radar"

data:extend(
{ 
  {
    type = "radar",
    name = "radar-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "radar",
    energy_per_sector = "12MJ",
    max_distance_of_sector_revealed = RadarMk2ScanDistance,
	max_distance_of_nearby_sector_revealed = RadarMk2ScanDistance/5,
    energy_per_nearby_scan = "500kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "450kW",
    pictures =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/radars/radar-2.png",
      priority = "low",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.35}
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },
  {
    type = "radar",
    name = "radar-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-3.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar-mk3"},
    max_health = 450,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "radar",
    energy_per_sector = "14MJ",
    max_distance_of_sector_revealed = RadarMk3ScanDistance,
	max_distance_of_nearby_sector_revealed = RadarMk3ScanDistance/5,
    energy_per_nearby_scan = "750kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "600kW",
    pictures =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/radars/radar-3.png",
      priority = "low",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.35}
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },
  {
    type = "radar",
    name = "radar-mk4",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-4.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar-mk4"},
    max_health = 600,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "radar",
    energy_per_sector = "16MJ",
    max_distance_of_sector_revealed = RadarMk4ScanDistance,
	max_distance_of_nearby_sector_revealed = RadarMk4ScanDistance/5,
    energy_per_nearby_scan = "1000kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "750kW",
    pictures =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/radars/radar-4.png",
      priority = "low",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.35}
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },
  {
    type = "radar",
    name = "radar-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-5.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar-mk5"},
    max_health = 1000,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "radar",
    energy_per_sector = "18MJ",
    max_distance_of_sector_revealed = RadarMk5ScanDistance,
	max_distance_of_nearby_sector_revealed = RadarMk5ScanDistance/5,
    energy_per_nearby_scan = "1250kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "1000kW",
    pictures =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/radars/radar-5.png",
      priority = "low",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.35}
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },
}
)
data:extend(
{
  {
    type = "radar",
    name = "radar-1",
    icon = "__base__/graphics/icons/radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "radar-1"},
    max_health = 150,
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
    energy_per_sector = "100MJ",
    max_distance_of_sector_revealed = 150,
    energy_per_nearby_scan = "500kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "3000kW",
    pictures =
    {
      filename = "__base__/graphics/entity/radar/radar.png",
      priority = "low",
      frame_width = 169,
      frame_height = 140,
      axially_symmetrical = false,
      direction_count = 64,
      line_length = 8,
      shift = {1.15, 0.75}
    }
  },
}
)
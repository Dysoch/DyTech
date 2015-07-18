MK1Tint = {r=0.804, g=0.361, b=0.361, a=0.85}
MK2Tint = {r=0.804, g=0.361, b=0.361, a=0.85}
MK3Tint = {r=0.804, g=0.361, b=0.361, a=0.85}

data:extend(
{ 
  {
    type = "beacon",
    name = "basic-beacon-1",
    icon = "__base__/graphics/icons/basic-beacon.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "basic-beacon-1"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06},
	  tint = MK1Tint
    },
    animation =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 30,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "1500kW",
    distribution_effectivity = 0.1,
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
  {
    type = "beacon",
    name = "basic-beacon-2",
    icon = "__base__/graphics/icons/basic-beacon.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "basic-beacon-2"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06},
	  tint = MK2Tint
    },
    animation =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 15,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "3000kW",
    distribution_effectivity = 0.5,
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
  {
    type = "beacon",
    name = "basic-beacon-3",
    icon = "__base__/graphics/icons/basic-beacon.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "basic-beacon-3"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06},
	  tint = MK3Tint
    },
    animation =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 7.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "6000kW",
    distribution_effectivity = 1,
    module_specification =
    {
      module_slots = 11,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
}
)
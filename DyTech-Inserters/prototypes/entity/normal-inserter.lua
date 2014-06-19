data:extend(
{
  {
    type = "inserter",
    name = "inserter-half",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-half"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.04,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/half-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.3,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 0.65},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_long.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.08,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 1.7,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 2.35},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-half",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_long_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long-half"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.08,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/long-half-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 1.3,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 1.65},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-fast-half",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_fast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-fast-half"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.07,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/fast-half-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.3,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 0.65},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.03
  },
  {
    type = "inserter",
    name = "inserter-veryfast-half",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_veryfast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast-half"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.14,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-half-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.3,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 0.65},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.06
  },
  {
    type = "inserter",
    name = "inserter-veryfast",
    icon = "__DyTech-Inserters__/graphics/icons/inserter_veryfast.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast"
    },
    max_health = 20,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.14,
    fast_replaceable_group = "inserter",
    hand_base_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Inserters__/graphics/entity/inserter/very-fast-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.85,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 1.35},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Inserters__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.06
  },
}
)
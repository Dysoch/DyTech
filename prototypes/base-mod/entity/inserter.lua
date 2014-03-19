data:extend(
{
  {
    type = "inserter",
    name = "inserter-half",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_half.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-half",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long_half.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-fast-half",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_fast_half.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.03
  },
  {
    type = "inserter",
    name = "inserter-veryfast-half",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast_half.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.06
  },
  {
    type = "inserter",
    name = "inserter-veryfast",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast.png",
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/normal-platform.png"
    },
    rotation_speed = 0.06
  },
  {
    type = "inserter",
    name = "inserter-half-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-half-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 1.7,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 1.65},
    platform_picture = 
	{
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-half-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long-half-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-fast-half-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_fast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-fast-half-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.03
  },
  {
    type = "inserter",
    name = "inserter-veryfast-half-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast-half-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.06
  },
  {
    type = "inserter",
    name = "inserter-veryfast-filter",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast-filter"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/filter-platform.png"
    },
    filter_count = 5,
    rotation_speed = 0.06
  },

  
  
  
  
  {
    type = "inserter",
    name = "inserter-half-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-half-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-long-half-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_long_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-long-half-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/long-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.02
  },
  {
    type = "inserter",
    name = "inserter-fast-half-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_fast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-fast-half-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.03
  },
  {
    type = "inserter",
    name = "inserter-veryfast-half-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast_half.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast-half-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-half-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.06
  },
  {
    type = "inserter",
    name = "inserter-veryfast-smart",
    icon = "__DyTech-Graphics__/graphics/icons/inserter_veryfast.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = 
	{
      hardness = 0.2,
      mining_time = 0.5,
      result = "inserter-veryfast-smart"
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
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture = 
	{
      filename = "__DyTech-Graphics__/graphics/entity/inserter/very-fast-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/smart-platform.png"
    },
	programmable = true,
    filter_count = 5,
    rotation_speed = 0.06
  },
  { --ONLY ADDED IN DYTECH
    type = "inserter",
    name = "dytech-inserter",
    icon = "__DyTech-Graphics__/graphics/icons/dytech-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dytech-inserter"},
    max_health = 1000,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 4000,
    energy_per_rotation = 4000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.18,
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-platform.png"
    },
	programmable = true,
    filter_count = 5,
	--[[module_slots = 4,]]-- --NOT WORKING YET!
	--[[allowed_effects = {"consumption", "speed"},]]-- --NOT WORKING YET!
    rotation_speed = 0.07  
  }, --ONLY ADDED IN DYTECH
  { --ONLY ADDED IN DYTECH
    type = "inserter",
    name = "dytech-inserter-fast",
    icon = "__DyTech-Graphics__/graphics/icons/dytech-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dytech-inserter-fast"},
    max_health = 1000,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 4000,
    energy_per_rotation = 4000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.33,
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-open.png",
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
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-platform.png"
    },
	programmable = true,
	--[[module_slots = 4,]]-- --NOT WORKING YET!
	--[[allowed_effects = {"consumption", "speed"},]]-- --NOT WORKING YET!
    rotation_speed = 0.33  
  }, --ONLY ADDED IN DYTECH
  {
    type = "inserter",
    name = "long-handed-inserter-filter",
    icon = "__base__/graphics/icons/long-handed-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-handed-inserter-filter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    insert_distance = 1.85,
    pickup_distance = 2,
    pickup_position = {0, -2},
    insert_position = {0, 2.35},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    rotation_speed = 0.02,
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
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    platform_picture =
    {
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png"
    },
	filter_count = 5,
  },
}
)
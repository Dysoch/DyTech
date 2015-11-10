require "prototypes.functions"

function DyTech_Create_Resource(Name, Hardness, Range, Color, Time)
  local result =
  {
    type = "resource",
    name = "stone",
    icon = "__base__/graphics/icons/stone.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "stone"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "stone",
      sharpness = 1,
      richness_multiplier = 11000,
      richness_base = 250,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.3,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.65,
          noise_layer = "iron-ore",
          noise_octaves_difference = -1.9,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.57,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.4,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/stone/stone.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.478, g=0.450, b=0.317}
  }
  result.stage_count = {5000, 3000, 2000, 1000, 500, 250, 100, 5}
  result.name = Name .. "-ore"
  result.order = Name .. "-ore"
  result.minable.result = Name .. "-ore"
  result.minable.hardness = Hardness
  result.minable.mining_time = Time * Range
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/resource/" .. Name .. "-ore.png"
  result.stages.sheet.filename = "__MAIN-DyTech-Metallurgy__/graphics/resource/" .. Name .. "-deposit.png"
  result.autoplace.control = Name
  result.autoplace.sharpness = result.autoplace.sharpness * Range
  result.autoplace.richness_multiplier = result.autoplace.richness_multiplier * Hardness
  result.autoplace.richness_base = result.autoplace.richness_base * Hardness
  --result.autoplace.peaks[2].influence = result.autoplace.peaks[2].influence * Range
  --result.autoplace.peaks[2].noise_persistence = result.autoplace.peaks[2].noise_persistence * Range
  result.autoplace.peaks[3].noise_layer = Name
  --result.autoplace.peaks[3].influence = result.autoplace.peaks[3].influence * Range
  result.autoplace.peaks[4].influence = result.autoplace.peaks[4].influence * Range
  result.autoplace.peaks[4].noise_persistence = result.autoplace.peaks[4].noise_persistence * Range
  result.autoplace.peaks[4].noise_layer = Name
  result.autoplace.peaks[5].influence = result.autoplace.peaks[5].influence * Range
  result.autoplace.peaks[5].noise_persistence = result.autoplace.peaks[5].noise_persistence * Range
  result.autoplace.peaks[6].influence = result.autoplace.peaks[6].influence * Range
  result.autoplace.peaks[6].noise_persistence = result.autoplace.peaks[6].noise_persistence * Range
  result.autoplace.peaks[7].influence = result.autoplace.peaks[7].influence * Range
  result.autoplace.peaks[7].noise_persistence = result.autoplace.peaks[7].noise_persistence * Range
  result.map_color = Color
  return result
end

function DyTech_Create_Raw_Ore(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-metallurgy-ores",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = NAME .. "-ore"
  result.order = NAME .. "-ore"
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/resource/" .. NAME .. "-ore.png"
  return result
end

function DyTech_Create_Raw_Ore_Two(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-metallurgy-ores-clean",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = NAME
  result.order = NAME
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/ores/" .. NAME .. ".png"
  return result
end

function DyTech_Create_Autoplace(NAME)
  local result =
  {
    type = "autoplace-control",
    name = "magma",
    richness = true,
    order = "m"
  }
  result.name = NAME
  result.order = NAME
  return result
end

function DyTech_Create_Noise_Layer(NAME)
  local result =
  {
    type = "noise-layer",
    name = "sand"
  }
  result.name = NAME
  return result
end

function DyTech_Remove_Resources()
	for k,v in pairs(data.raw.resource) do
		if v.autoplace and v.name ~= "crude-oil" then
			v.autoplace = nil
		end
	end
end

DyTech_Remove_Resources()
for index,name in pairs(RESOURCES) do
data:extend(
  {
	DyTech_Create_Autoplace(name.Name),
	DyTech_Create_Noise_Layer(name.Name),
	DyTech_Create_Resource(name.Name, name.Hardness, name.Range, name.Color, name.Time),
	DyTech_Create_Raw_Ore(name.Name)
  })
end

for index,name in pairs(ORES) do
	if not data.raw.item[name] then
	  data:extend(
		{
		  DyTech_Create_Raw_Ore_Two(name)
		})
	else
		data.raw.item[name].subgroup = "dytech-metallurgy-ores-clean"
		data.raw.item[name].order = name
	end
end
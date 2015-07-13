--require "prototypes.functions"
require "config"
require "prototypes.internal-config"


--[[Solar panel functions]]--
function SolarPictures(Type, Tint)
if Type == 1 then
return
    {
			layers =
			{
				{
					filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small.png",
					priority = "high",
					width = 80,
					height = 67,
					scale = 0.95,
					shift = {0.05, 0}
				},
				{
					filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small.png",
					priority = "high",
					width = 80,
					height = 67,
					scale = 0.95,
					shift = {0.05, 0}
					tint = Tint,
				}
			}
    }
elseif Type == 2 then
return
    {
			layers =
			{
				{
					filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
					priority = "high",
					width = 104,
					height = 96,
					scale = Scale
				},
				{
					filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
					priority = "high",
					width = 104,
					height = 96,
					scale = Scale,
					tint = Tint
				}
			}
    }
elseif Type == 3 then
return
    {
			layers =
			{
				{
					filename = "__MAIN-DyTech-Power__/graphics/solar-panels/large.png",
					priority = "high",
					width = 126,
					height = 127,
					scale = Scale
				},
				{
					filename = "__MAIN-DyTech-Power__/graphics/solar-panels/large.png",
					priority = "high",
					width = 126,
					height = 127,
					scale = Scale,
					tint = Tint
				}
			}
    }
end
end

function BaseSolarPictures(Scale)
return
    {
			filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
			priority = "high",
			width = 104,
			height = 96,
			scale = Scale
    }
end



--[[Accumulator functions]]--
function AccumulatorPictures(Scale, Tint)
return
    {
			layers = 
			{
				{
					filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
					priority = "extra-high",
					width = 124,
					height = 103,
					shift = {0.7, -0.2},
					scale = Scale,
				},
				{	
					filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
					priority = "extra-high",
					width = 124,
					height = 103,
					shift = {0.7, -0.2},
					scale = Scale,
					tint = Tint
				}
			}
    }
end

function AccumulatorChargePictures(cale, Tint)
return
    {
			layers = 
			{
				{
					filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
					width = 138,
					height = 135,
					line_length = 8,
					frame_count = 24,
					shift = {0.482, -0.638},
					animation_speed = 0.5,
					scale = Scale,
				},
				{
					filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
					width = 138,
					height = 135,
					line_length = 8,
					frame_count = 24,
					shift = {0.482, -0.638},
					animation_speed = 0.5,
					scale = Scale,
					tint = Tint
				}
			}
    }
end

function AccumulatorDischargePictures(Scale, Tint)
return
    {
			layers = 
			{
				{
					filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
					width = 147,
					height = 128,
					line_length = 8,
					frame_count = 24,
					shift = {0.395, -0.525},
					animation_speed = 0.5,
					scale = Scale
				},
				{
					
					tint = Tint
				}
			}
    }
end

function CreateAccumulator(Name, Size, Tier, Icon)
return {
    type = "accumulator",
    name = Name,
    icon = Icon,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = Name},
    max_health = Health[Tier],
		resistances = Resistances[Tier],
    corpse = "medium-remnants",
    collision_box = Accumulators.Collision_box[Size],
    selection_box = Accumulators.Selection_box[Size],
		fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer[Size][Tier],
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input[Size][Tier],
      output_flow_limit = Accumulators.Output[Size][Tier]
    },
		picture = AccumulatorPictures(Accumulators.Scale[Size], Accumulators.Tint[Tier]),
    charge_animation = AccumulatorChargePictures(Accumulators.Scale[Size], Accumulators.Tint[Tier]),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(Accumulators.Scale[Size], Accumulators.Tint[Tier]),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  }
end



--[[Steam engine functions]]--
function SteamHorizontalPictures(Scale, Tint)
return
    {
			layers = 
			{
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
					width = 246,
					height = 137,
					frame_count = 32,
					line_length = 8,
					shift = {1.34, -0.06},
					scale = Scale
				},
				{
				filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
				width = 246,
				height = 137,
				frame_count = 32,
				line_length = 8,
				shift = {1.34, -0.06},
				scale = Scale,
				tint = Tint
				}
			}
    }
end

function SteamVerticalPictures(Scale, Tint)
return
    {
			layers = 
			{
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
					width = 155,
					height = 186,
					frame_count = 32,
					line_length = 8,
					shift = {0.812, 0.031},
					scale = Scale
				},
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
					width = 155,
					height = 186,
					frame_count = 32,
					line_length = 8,
					shift = {0.812, 0.031},
					scale = Scale,
					tint = Tint
				}
			}
    }
end

function CreateSteamEngine(Name, Size, Tier, OutputType, Icon)
	return
	{
    type = "generator",
    name = Name,
    icon = Icon,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = Name},
    max_health = Health[math.floor((2.25 * Tier)) - 1], --sequence: Tier 1 = 1, Tier 2 = 3, Tier 3 = 5, Tier 4 = 8, Tier 5 = 10
		resistances = Resistances[math.floor((2.25 * Tier)) - 1],
    corpse = "big-remnants",
    effectivity = SteamEngines[Size].effectivity[Tier],
    fluid_usage_per_tick = SteamEngines[Size]fluid_usage_per_tick[Tier],
		fast_replaceable_group =  "steam-engine",
    collision_box = SteamEngines[Size].collision_box,
    selection_box = SteamEngines[Size].selection_box,
    fluid_box =
    {
      base_area = 2.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = OutputType
    },
    horizontal_animation = SteamHorizontalPictures(SteamEngines[Size].scale, SteamEngines.Tint[Tier]),
    vertical_animation = SteamVerticalPictures(SteamEngines[Size].scale, SteamEngines.Tint[Tier]),
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  }
end
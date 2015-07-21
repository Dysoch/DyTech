--require "prototypes.functions"
require "config"
require "prototypes.internal-config"

function SolarPictures(Type, Tint)
if Type == 1 then
return
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small.png",
      priority = "high",
      width = 80,
      height = 67,
	  scale = 0.95,
	  tint = Tint,
	  shift = {0.05, 0}
    }
elseif Type == 2 then
return
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  scale = Scale,
	  tint = Tint
    }
elseif Type == 3 then
return
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/large.png",
      priority = "high",
      width = 126,
      height = 127,
	  scale = Scale,
	  tint = Tint
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

function SmallAccumulatorPictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.35, -0.2},
	  scale = Scale,
	  tint = Tint
    }
end

function SmallAccumulatorChargePictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.25, -0.638},
      animation_speed = 0.5,
	  scale = Scale,
	  tint = Tint
    }
end

function SmallAccumulatorDischargePictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.1, -0.525},
      animation_speed = 0.5,
	  scale = Scale,
	  tint = Tint
    }
end

function AccumulatorPictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2},
	  scale = Scale,
	  tint = Tint
    }
end

function AccumulatorChargePictures(Scale, Tint)
return
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
end

function AccumulatorDischargePictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5,
	  scale = Scale,
	  tint = Tint
    }
end

function LargeAccumulatorPictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {1, -0.1},
	  scale = Scale,
	  tint = Tint
    }
end

function LargeAccumulatorChargePictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.7, -0.1},
      animation_speed = 0.5,
	  scale = Scale,
	  tint = Tint
    }
end

function LargeAccumulatorDischargePictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.6, -0.1},
      animation_speed = 0.5,
	  scale = Scale,
	  tint = Tint
    }
end

function SteamHorizontalPictures(Type, Scale, Tint)
return
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
end

function SteamVerticalPictures(Type, Scale, Tint)
return
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
end
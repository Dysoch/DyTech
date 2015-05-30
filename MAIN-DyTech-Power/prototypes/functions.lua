--require "prototypes.functions"
require "config"
require "prototypes.new.nuclear-reactors.nuclear-recipes.recipes"

function SolarPictures(Scale, Tint)
return
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  scale = Scale,
	  tint = Tint
    }
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

function SteamHorizontalPictures(Scale, Tint)
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

function SteamVerticalPictures(Scale, Tint)
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

function Recipe(Item, Sort)
if CheatRecipe then
	if Sort == 0 then
		return
		{"raw-wood", 1}
	elseif Sort == 1 then
		return
		{"water", 1}
	end
else
--return
	GetRecipe(Item)
end
end
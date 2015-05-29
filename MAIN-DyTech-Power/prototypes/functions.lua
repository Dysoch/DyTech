--require "prototypes.functions"

AccumulatorsTint = {
	mk2 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk3 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk4 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk5 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk6 = {r=0.545, g=0.271, b=0.075, a=0.9}
}

SolarTint = {
	mk1 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk2 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk3 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk4 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk5 = {r=0.545, g=0.271, b=0.075, a=0.9}
}

SteamEngineTint = {
	mk2 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk3 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk4 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk5 = {r=0.545, g=0.271, b=0.075, a=0.9}
}

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
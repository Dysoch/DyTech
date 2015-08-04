table.insert(data.raw["technology"]["bullet-damage-1"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.1"})
table.insert(data.raw["technology"]["bullet-damage-2"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.1"})
table.insert(data.raw["technology"]["bullet-damage-3"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.2"})
table.insert(data.raw["technology"]["bullet-damage-4"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.2"})
table.insert(data.raw["technology"]["bullet-damage-5"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.2"})
table.insert(data.raw["technology"]["bullet-damage-6"].effects,{type = "ammo-damage",ammo_category = "sniper-ammo",modifier = "0.4"})
table.insert(data.raw["technology"]["bullet-speed-1"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.2"})
table.insert(data.raw["technology"]["bullet-speed-2"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.2"})
table.insert(data.raw["technology"]["bullet-speed-3"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.3"})
table.insert(data.raw["technology"]["bullet-speed-4"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.3"})
table.insert(data.raw["technology"]["bullet-speed-5"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.3"})
table.insert(data.raw["technology"]["bullet-speed-6"].effects,{type = "gun-speed",ammo_category = "sniper-ammo",modifier = "0.3"})
data.raw["technology"]["military-2"].unit.count = 50
data.raw["technology"]["military-2"].unit.ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}}
data.raw["technology"]["military-3"].unit.count = 150
data.raw["technology"]["military-3"].unit.ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}}
data.raw["technology"]["military-4"].unit.count = 200
data.raw["technology"]["military-4"].unit.ingredients = {{"science-pack-1", 1},{"science-pack-2", 1}}

data:extend(
{
  {
    type = "technology",
    name = "military-5",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "sniper-magazine-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "sniper-magazine-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "sniper"
      },
    },
    prerequisites = {"military-4", "zinc-processing", "tin-processing", "lead-processing", "tungsten-processing", "cobalt-processing", "advanced-electronics"},
    unit =
    {
      count = 300,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-5",
	upgrade = true
  },
}
)
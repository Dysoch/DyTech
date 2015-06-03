table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-4a"})
--table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-5a"})
--table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-6a"})
--table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-7a"})
--table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-8a"})

require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-furnace-4a",
    icon = "__MAIN-DyTech-Machine__/graphics/steel-furnaces/icon/steel-furnace-2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=1},
	  Iron(67),
	  Copper(22.5),
	  Steel(8),
	  Stone(20),
	  Lead(10),
    },
    results = 
	{
	  {type="item", name="steel-furnace-mk2", amount=1},
	  {type="item", name="mold-machine", amount=1},
	}
  },
}
)
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-4a"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-5a"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-6a"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-7a"})

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
	  {type="item", name="mold-machine", amount=0},
	  Iron(67),
	  Copper(22.5),
	  Steel(8),
	  Stone(20),
	  Lead(10),
    },
    results = 
	{
	  {type="item", name="steel-furnace-mk2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-5a",
    icon = "__MAIN-DyTech-Machine__/graphics/steel-furnaces/icon/steel-furnace-3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(87),
	  Copper(22.5),
	  Steel(20),
	  Stone(20),
	  Lead(30),
    },
    results = 
	{
	  {type="item", name="steel-furnace-mk3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-6a",
    icon = "__MAIN-DyTech-Machine__/graphics/steel-furnaces/icon/steel-furnace-4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(114),
	  Copper(35.8),
	  Steel(40),
	  Stone(20),
	  Lead(30),
	  Tungsten(40),
	  Zinc(18.3),
    },
    results = 
	{
	  {type="item", name="steel-furnace-mk4", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-7a",
    icon = "__MAIN-DyTech-Machine__/graphics/steel-furnaces/icon/steel-furnace-5.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(172),
	  Copper(97.5),
	  Steel(68),
	  Stone(20),
	  Lead(30),
	  Tungsten(120),
	  Zinc(50),
    },
    results = 
	{
	  {type="item", name="steel-furnace-mk5", amount=1},
	}
  },
}
)
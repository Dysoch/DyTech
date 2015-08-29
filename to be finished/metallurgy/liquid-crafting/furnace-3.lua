table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-4b"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-5b"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-6b"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-7b"})

require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-furnace-4b",
    icon = "__MAIN-DyTech-Machine__/graphics/electric-furnaces/electric-furnace-2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(85),
	  Copper(62.5),
	  Stone(20),
	  Lead(10),
	  Tin(15),
    },
    results = 
	{
	  {type="item", name="electric-furnace-mk2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-5b",
    icon = "__MAIN-DyTech-Machine__/graphics/electric-furnaces/electric-furnace-3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(115),
	  Copper(87.5),
	  Steel(12),
	  Stone(20),
	  Lead(30),
	  Tin(15),
    },
    results = 
	{
	  {type="item", name="electric-furnace-mk3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-6b",
    icon = "__MAIN-DyTech-Machine__/graphics/electric-furnaces/electric-furnace-4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(142),
	  Copper(101),
	  Steel(32),
	  Stone(20),
	  Lead(30),
	  Tin(15),
	  Tungsten(40),
    },
    results = 
	{
	  {type="item", name="electric-furnace-mk4", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-7b",
    icon = "__MAIN-DyTech-Machine__/graphics/electric-furnaces/electric-furnace-5.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(200),
	  Copper(163),
	  Steel(60),
	  Stone(20),
	  Lead(30),
	  Tin(15),
	  Tungsten(120),
	  Zinc(50),
    },
    results = 
	{
	  {type="item", name="electric-furnace-mk5", amount=1}
	}
  },
}
)
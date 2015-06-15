table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-3"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-4"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-5"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-6"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-7"})

require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-miner-3",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone(32),
	  Iron(164),
	  Copper(53.5),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill-mk2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-miner-4",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone(136),
	  Iron(320),
	  Copper(105),
	  Steel(34),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill-mk3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-miner-5",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone(312),
	  Iron(545),
	  Copper(193),
	  Steel(104),
	  Zinc(36.7),
	  Lead(73),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill-mk4", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-miner-6",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill5.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone((128+288+288)),
	  Iron(1100),
	  Copper(685),
	  Steel(246),
	  Zinc(207),
	  Lead(242),
	  Tungsten(25),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill-mk5", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-miner-7",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill6.png",
	category = "forge",
    energy_required = 100,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone((384+864+864)),
	  Iron(4300),
	  Copper(3700),
	  Steel(738),
	  Zinc(1300),
	  Lead(726),
	  Tungsten(575),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill-mk6", amount=1},
	}
  },
}
)
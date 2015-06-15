table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-1"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-miner-2"})

require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-miner-1",
    icon = "__base__/graphics/icons/burner-mining-drill.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Stone(5),
	  Iron(3),
    },
    results = 
	{
	  {type="item", name="burner-mining-drill", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-miner-2",
    icon = "__base__/graphics/icons/basic-mining-drill.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  Iron(78),
	  Copper(27),
    },
    results = 
	{
	  {type="item", name="basic-mining-drill", amount=1},
	}
  },
}
)
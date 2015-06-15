table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-1"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-2"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-3"})

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=16.5},
	  {type="fluid", name="molten-copper", amount=3.375},
	  {type="item", name="mold-machine", amount=0},
    },
    results = 
	{
	  {type="item", name="assembling-machine-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=34.5},
	  {type="fluid", name="molten-copper", amount=8.625},
	  {type="item", name="mold-machine", amount=0},
    },
    results = 
	{
	  {type="item", name="assembling-machine-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-3",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=103.5},
	  {type="fluid", name="molten-copper", amount=60.375},
	  {type="item", name="mold-machine", amount=0},
    },
    results = 
	{
	  {type="item", name="assembling-machine-3", amount=1},
	}
  },
}
)
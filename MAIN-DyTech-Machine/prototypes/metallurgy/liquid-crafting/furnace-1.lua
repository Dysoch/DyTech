table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-1"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-2"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-furnace-3"})

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-furnace-1",
    icon = "__base__/graphics/icons/stone-furnace.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  {type="fluid", name="sludge", amount=3.75},
    },
    results = 
	{
	  {type="item", name="stone-furnace", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-2",
    icon = "__base__/graphics/icons/steel-furnace.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=15},
	  {type="fluid", name="molten-carbonated-iron", amount=6},
	  {type="item", name="mold-machine", amount=0},
    },
    results = 
	{
	  {type="item", name="steel-furnace", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-furnace-3",
    icon = "__base__/graphics/icons/electric-furnace.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=15},
	  {type="fluid", name="molten-iron", amount=51.75},
	  {type="fluid", name="molten-copper", amount=39.375},
	  {type="fluid", name="molten-tin", amount=11.25},
	  {type="item", name="mold-machine", amount=0},
    },
    results = 
	{
	  {type="item", name="electric-furnace", amount=1},
	}
  },
}
)
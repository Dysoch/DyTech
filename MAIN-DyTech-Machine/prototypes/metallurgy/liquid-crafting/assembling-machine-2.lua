table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-4"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-5"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-6"})
table.insert(data.raw["technology"]["molds-machine"].effects,{type = "unlock-recipe",recipe = "mold-crafting-machine-7"})

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-machine-4",
    icon = "__MAIN-DyTech-Machine__/graphics/assembling-machines/icon/assembling-machine-4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  {type="fluid", name="molten-iron", amount=109.5},
	  {type="fluid", name="molten-copper", amount=67.875},
	  {type="fluid", name="molten-carbonated-iron", amount=10.5},
    },
    results = 
	{
	  {type="item", name="assembling-machine-4", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-5",
    icon = "__MAIN-DyTech-Machine__/graphics/assembling-machines/icon/assembling-machine-5.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  {type="fluid", name="molten-iron", amount=115.5},
	  {type="fluid", name="molten-copper", amount=75},
	  {type="fluid", name="molten-carbonated-iron", amount=11.5},
	  {type="fluid", name="molten-lead", amount=15},
	  {type="fluid", name="molten-zinc", amount=3},
    },
    results = 
	{
	  {type="item", name="assembling-machine-5", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-6",
    icon = "__MAIN-DyTech-Machine__/graphics/assembling-machines/icon/assembling-machine-6.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  {type="fluid", name="molten-iron", amount=184.5},
	  {type="fluid", name="molten-copper", amount=147},
	  {type="fluid", name="molten-carbonated-iron", amount=28.5},
	  {type="fluid", name="molten-lead", amount=33.75},
	  {type="fluid", name="molten-zinc", amount=14.475},
	  {type="fluid", name="molten-tungsten", amount=10},
    },
    results = 
	{
	  {type="item", name="assembling-machine-6", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-7",
    icon = "__MAIN-DyTech-Machine__/graphics/assembling-machines/icon/assembling-machine-7.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="item", name="mold-machine", amount=0},
	  {type="fluid", name="molten-iron", amount=330.75},
	  {type="fluid", name="molten-copper", amount=357},
	  {type="fluid", name="molten-carbonated-iron", amount=54.75},
	  {type="fluid", name="molten-lead", amount=52.5},
	  {type="fluid", name="molten-zinc", amount=73.725},
	  {type="fluid", name="molten-tungsten", amount=108.75},
	  {type="fluid", name="molten-gold", amount=37.5},
    },
    results = 
	{
	  {type="item", name="assembling-machine-7", amount=1},
	}
  },
}
)
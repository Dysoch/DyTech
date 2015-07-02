table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-4a"})
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-4b"})
table.insert(data.raw["technology"]["logistics-4"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-4c"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-5a"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-5b"})
table.insert(data.raw["technology"]["logistics-5"].effects,{type = "unlock-recipe",recipe = "mold-crafting-belt-5c"})

data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-belt-4a",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="fluid", name="molten-tungsten", amount=1.5},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="super-transport-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-4b",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="fluid", name="molten-tungsten", amount=24},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="super-transport-belt-to-ground", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-4c",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="fluid", name="molten-tungsten", amount=3},
	  {type="fluid", name="molten-lead", amount=2.25},
	  {type="fluid", name="molten-zinc", amount=8.025},
	  {type="item", name="mold-belt", amount=0},
	  {type="item", name="plastic-bar", amount=15},
    },
    results = 
	{
	  {type="item", name="super-splitter", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5a",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="fluid", name="molten-tungsten", amount=1.5},
	  {type="fluid", name="molten-cobalt", amount=3.75},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="extreme-transport-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5b",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="fluid", name="molten-tungsten", amount=9},
	  {type="fluid", name="molten-cobalt", amount=52.5},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="extreme-transport-belt-to-ground", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5c",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="fluid", name="molten-tungsten", amount=3},
	  {type="fluid", name="molten-lead", amount=2.25},
	  {type="fluid", name="molten-zinc", amount=8.025},
	  {type="fluid", name="molten-cobalt", amount=7.5},
	  {type="item", name="mold-belt", amount=0},
	  {type="item", name="plastic-bar", amount=100},
    },
    results = 
	{
	  {type="item", name="extreme-splitter", amount=1},
	}
  },
}
)
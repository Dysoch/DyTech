require "prototypes.prototype-creation"
require "prototypes.override-functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-belt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "belt",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-belt",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"basic-transport-belt", 1}
    },
    result = "mold-belt"
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1a",
    icon = "__base__/graphics/icons/basic-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.75},
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="basic-transport-belt", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1b",
    icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=9.375},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="basic-transport-belt-to-ground", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1c",
    icon = "__base__/graphics/icons/basic-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=9},
	  {type="fluid", name="molten-copper", amount=5.625},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="basic-splitter", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2a",
    icon = "__base__/graphics/icons/fast-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=7.875},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="fast-transport-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2b",
    icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=39.375},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="fast-transport-belt-to-ground", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2c",
    icon = "__base__/graphics/icons/fast-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=31.5},
	  {type="fluid", name="molten-copper", amount=16.875},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="fast-splitter", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3a",
    icon = "__base__/graphics/icons/express-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="express-transport-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3b",
    icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="item", name="mold-belt", amount=0},
    },
    results = 
	{
	  {type="item", name="express-transport-belt-to-ground", amount=2},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3c",
    icon = "__base__/graphics/icons/express-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="item", name="mold-belt", amount=0},
	  {type="item", name="plastic-bar", amount=15},
    },
    results = 
	{
	  {type="item", name="express-splitter", amount=1},
	}
  },
}
)

CreateBlankTech("molds-belt-1", "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png", 150, 30)
AddRecipeToTech("molds-belt-1", "mold-belt")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-1a")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-1b")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-1c")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-2a")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-2b")
AddRecipeToTech("molds-belt-1", "mold-crafting-belt-2c")
AddRequirementToTech("molds-belt-1", "lava-02")
AddRequirementToTech("molds-belt-1", "water-cleaning")
AddIngredientToTech("molds-belt-1", "science-pack-1", 1)
AddIngredientToTech("molds-belt-1", "science-pack-2", 1)

CreateBlankTech("molds-belt-2", "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png", 200, 30)
AddRequirementToTech("molds-belt-2", "molds-belt-1")
AddRecipeToTech("molds-belt-2", "mold-crafting-belt-3a")
AddRecipeToTech("molds-belt-2", "mold-crafting-belt-3b")
AddRecipeToTech("molds-belt-2", "mold-crafting-belt-3c")
AddIngredientToTech("molds-belt-2", "science-pack-1", 1)
AddIngredientToTech("molds-belt-2", "science-pack-2", 1)
AddIngredientToTech("molds-belt-2", "science-pack-3", 1)
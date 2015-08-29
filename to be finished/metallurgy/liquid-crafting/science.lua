require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-science",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "science",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-science",
    enabled = false,
    ingredients =
    {
      {"science-pack-1", 1},
	  {"clay", 5},
    },
    result = "mold-science"
  },
  {
    type = "recipe",
    name = "mold-crafting-science-1",
    icon = "__base__/graphics/icons/lab.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-science",
    order = "1",
    ingredients =
    {
	  {type="item", name="mold-science", amount=0},
	  Stone(7),
	  Iron(12),
	  Copper(15),
    },
    results = 
	{
	  {type="item", name="lab", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-science-2",
    icon = "__base__/graphics/icons/science-pack-1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-science",
    order = "2",
    ingredients =
    {
	  {type="item", name="mold-science", amount=0},
	  Stone(1),
	  Copper(1),
    },
    results = 
	{
	  {type="item", name="science-pack-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-science-3",
    icon = "__base__/graphics/icons/science-pack-2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-science",
    order = "3",
    ingredients =
    {
	  {type="item", name="mold-science", amount=0},
	  Stone(0.5),
	  Iron(4.5),
	  Copper(1.5),
    },
    results = 
	{
	  {type="item", name="science-pack-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-science-4",
    icon = "__base__/graphics/icons/science-pack-3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-science",
    order = "4",
    ingredients =
    {
	  {type="item", name="mold-science", amount=0},
	  Iron(14),
	  Copper(15.5),
	  Steel(1),
    },
    results = 
	{
	  {type="item", name="science-pack-3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-science-5",
    icon = "__base__/graphics/icons/alien-science-pack.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-science",
    order = "5",
    ingredients =
    {
	  {type="item", name="mold-science", amount=0},
	  Tungsten(33.5),
	  Ardite(33.5),
	  Cobalt(33.5),
    },
    results = 
	{
	  {type="item", name="alien-science-pack", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-science",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-science"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-science-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-science-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-science-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-science-4"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-science-5"
      },
    },
    prerequisites = {"lava-04", "water-cleaning"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "molds-science",
  },
}
)
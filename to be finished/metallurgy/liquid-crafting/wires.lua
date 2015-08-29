data:extend(
{ 
  {
    type = "item",
    name = "mold-wire",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-wire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "wire",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-wire",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"copper-cable", 2}
    },
    result = "mold-wire"
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-1",
    icon = "__base__/graphics/icons/copper-cable.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-wires",
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=0.4},
	  {type="item", name="mold-wire", amount=0},
    },
    results = 
	{
	  {type="item", name="copper-cable", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-2",
    icon = "__base__/graphics/icons/red-wire.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "liquid-crafting-wires",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
	  {type="item", name="mold-wire", amount=0},
    },
    results = 
	{
	  {type="item", name="red-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-3",
    icon = "__base__/graphics/icons/green-wire.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "liquid-crafting-wires",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
	  {type="item", name="mold-wire", amount=0},
    },
    results = 
	{
	  {type="item", name="green-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-4",
    icon = "__base__/graphics/icons/iron-stick.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "liquid-crafting-wires",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.37},
	  {type="item", name="mold-wire", amount=0},
    },
    results = 
	{
	  {type="item", name="iron-stick", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-wire",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-4"
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
      },
      time = 30
    },
    order = "molds-wire",
  },
}
)
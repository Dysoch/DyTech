data:extend(
{ 
  {
    type = "item",
    name = "mold-circuit",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "circuit",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-circuit",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"electronic-circuit", 1}
    },
    result = "mold-circuit"
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-1",
    icon = "__base__/graphics/icons/electronic-circuit.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "liquid-crafting-circuit",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1},
	  {type="item", name="mold-circuit", amount=0},
    },
    results = 
	{
	  {type="item", name="electronic-circuit", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-2",
    icon = "__base__/graphics/icons/advanced-circuit.png",
	category = "forge",
    energy_required = 2,
    enabled = false,
    subgroup = "liquid-crafting-circuit",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.4},
	  {type="fluid", name="molten-copper", amount=1.8},
	  {type="item", name="plastic-bar", amount=1},
	  {type="item", name="mold-circuit", amount=0},
    },
    results = 
	{
	  {type="item", name="advanced-circuit", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-3",
    icon = "__base__/graphics/icons/processing-unit.png",
	category = "forge",
    energy_required = 6,
    enabled = false,
    subgroup = "liquid-crafting-circuit",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
	  {type="fluid", name="molten-copper", amount=20},
	  {type="item", name="plastic-bar", amount=2},
      {type="fluid", name="sulfuric-acid", amount=0.1},
	  {type="item", name="mold-circuit", amount=0},
    },
    results = 
	{
	  {type="item", name="processing-unit", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-4",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/advanced-processing-unit.png",
	category = "forge",
    energy_required = 12,
    enabled = false,
    subgroup = "liquid-crafting-circuit",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=37.5},
	  {type="fluid", name="molten-copper", amount=50},
	  {type="item", name="plastic-bar", amount=8},
      {type="fluid", name="sulfuric-acid", amount=0.4},
	  {type="item", name="mold-circuit", amount=0},
    },
    results = 
	{
	  {type="item", name="advanced-processing-unit", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-circuit",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-4"
      },
    },
    prerequisites = {"molds-wire"},
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
    order = "molds-circuit",
  },
}
)
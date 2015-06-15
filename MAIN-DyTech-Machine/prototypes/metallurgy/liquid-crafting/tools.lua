data:extend(
{ 
  {
    type = "item",
    name = "mold-tool",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "tool",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-tool",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"steel-axe", 1}
    },
    result = "mold-tool"
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-1",
    icon = "__base__/graphics/icons/iron-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=3},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="iron-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-2",
    icon = "__base__/graphics/icons/steel-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-carbonated-iron", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="steel-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-3",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/tin-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-tin", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="tin-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-4",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/zinc-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-zinc", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="zinc-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-5",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/silver-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-silver", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="silver-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-6",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/lead-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-lead", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="lead-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-7",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/tungsten-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-tungsten", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="tungsten-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-8",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/cobalt-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-cobalt", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="cobalt-axe", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tools-9",
    icon = "__MAIN-DyTech-Machine__/graphics/tools/ardite-axe.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-tools",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="fluid", name="molten-ardite", amount=3.75},
	  {type="item", name="mold-tool", amount=0},
    },
    results = 
	{
	  {type="item", name="ardite-axe", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-tool",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-tool"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-4"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-5"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-6"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-7"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-8"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tools-9"
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
    order = "molds-tool",
  },
}
)
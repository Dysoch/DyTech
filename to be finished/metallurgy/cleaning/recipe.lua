data:extend(
{ 
  {
    type = "recipe",
    name = "clean-iron-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=3},
	  {type="item", name="iron-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-iron-ore", amount=1},
      {type="fluid", name="sludge", amount=3},
    },
  },
  {
    type = "recipe",
    name = "clean-copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="copper-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-copper-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-tin-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tin/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="tin-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-tin-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-zinc-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="zinc-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-zinc-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-lead-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/lead/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="lead-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-lead-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-silver-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/silver/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="silver-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-silver-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-gold-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/gold/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="gold-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-gold-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-tungsten-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="tungsten-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-tungsten-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-cobalt-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/cobalt/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="cobalt-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-cobalt-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "clean-ardite-ore",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/ardite/ore-icon.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=5},
	  {type="item", name="ardite-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-ardite-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "iron-chunks",
    category = "smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
	enabled = false,
    energy_required = 7,
    ingredients = 
	{
	  {"iron-chunks", 25}
	},
    result = "iron-plate"
  },
  {
    type = "recipe",
    name = "copper-chunks",
    category = "smelting",
    icon = "__base__/graphics/icons/copper-plate.png",
	enabled = false,
    energy_required = 7,
    ingredients = 
	{
	  {"copper-chunks", 25}
	},
    result = "copper-plate"
  },
  {
    type = "recipe",
    name = "sludge-processing",
    icon = "__base__/graphics/icons/stone.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="sludge", amount=15},
    },
    results = 
    {
      {type="item", name="stone", amount_min=1, amount_max=3, probability=0.8},
      {type="item", name="iron-chunks", amount_min=1, amount_max=2, probability=0.075},
      {type="item", name="copper-chunks", amount_min=1, amount_max=2, probability=0.1},
    },
  },
  {
    type = "recipe",
    name = "obsidian-processing",
	category = "centrifuge",
    energy_required = 5,
	enabled = true,
    ingredients =
    {
	  {type="fluid", name="lava-600", amount=10},
    },
    results = 
    {
      {type="item", name="obsidian", amount_min=2, amount_max=15, probability=1},
    },
  },
 
}
)
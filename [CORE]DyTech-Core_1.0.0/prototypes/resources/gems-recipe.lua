data:extend(
{
  --[[GEM WORKING]]--
  --[[CRUSHING]]--
  {
    type = "recipe",
    name = "ruby-2",
	category = "crafting-with-fluid",
	energy_required = 12,
    ingredients =
    {
	  {"ruby-ore", 1},
    },
    result = "ruby-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "topaz-2",
	category = "crafting-with-fluid",
	energy_required = 12,
    ingredients =
    {
	  {"topaz-ore", 1},
    },
    result = "topaz-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "emerald-2",
	category = "crafting-with-fluid",
	energy_required = 12,
    ingredients =
    {
	  {"emerald-ore", 1},
    },
    result = "emerald-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "diamond-2",
	category = "crafting-with-fluid",
	energy_required = 12,
    ingredients =
    {
	  {"diamond-ore", 1},
    },
    result = "diamond-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "sapphire-2",
	category = "crafting-with-fluid",
	energy_required = 12,
    ingredients =
    {
	  {"sapphire-ore", 1},
    },
    result = "sapphire-2",
	result_count =  2
  },
  --[[GRINDING]]--
  {
    type = "recipe",
    name = "ruby-3",
	category = "crafting-with-fluid",
	energy_required = 25,
    ingredients =
    {
	  {"ruby-2", 1},
    },
    result = "ruby-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "topaz-3",
	category = "crafting-with-fluid",
	energy_required = 25,
    ingredients =
    {
	  {"topaz-2", 1},
    },
    result = "topaz-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "emerald-3",
	category = "crafting-with-fluid",
	energy_required = 25,
    ingredients =
    {
	  {"emerald-2", 1},
    },
    result = "emerald-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "diamond-3",
	category = "crafting-with-fluid",
	energy_required = 25,
    ingredients =
    {
	  {"diamond-2", 1},
    },
    result = "diamond-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "sapphire-3",
	category = "crafting-with-fluid",
	energy_required = 25,
    ingredients =
    {
	  {"sapphire-2", 1},
    },
    result = "sapphire-3",
	result_count =  2
  },
  --[[CUTTING]]--
  {
    type = "recipe",
    name = "ruby-4",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {"ruby-3", 1},
	  {"stone", 10},
    },
    result = "ruby-4",
  },
  {
    type = "recipe",
    name = "topaz-4",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {"topaz-3", 1},
	  {"stone", 10},
    },
    result = "topaz-4",
  },
  {
    type = "recipe",
    name = "emerald-4",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {"emerald-3", 1},
	  {"stone", 10},
    },
    result = "emerald-4",
  },
  {
    type = "recipe",
    name = "diamond-4",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {"diamond-3", 1},
	  {"stone", 10},
    },
    result = "diamond-4",
  },
  {
    type = "recipe",
    name = "sapphire-4",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {"sapphire-3", 1},
	  {"stone", 10},
    },
    result = "sapphire-4",
  },
  --[[POLISHING]]--
  {
    type = "recipe",
    name = "ruby-5",
	category = "crafting-with-fluid",
	energy_required = 75,
    ingredients =
    {
	  {"ruby-4", 15},
	  {"stone", 100},
    },
    result = "ruby-5",
  },
  {
    type = "recipe",
    name = "topaz-5",
	category = "crafting-with-fluid",
	energy_required = 75,
    ingredients =
    {
	  {"topaz-4", 15},
	  {"stone", 100},
    },
    result = "topaz-5",
  },
  {
    type = "recipe",
    name = "emerald-5",
	category = "crafting-with-fluid",
	energy_required = 75,
    ingredients =
    {
	  {"emerald-4", 15},
	  {"stone", 100},
    },
    result = "emerald-5",
  },
  {
    type = "recipe",
    name = "diamond-5",
	category = "crafting-with-fluid",
	energy_required = 75,
    ingredients =
    {
	  {"diamond-4", 15},
	  {"stone", 100},
    },
    result = "diamond-5",
  },
  {
    type = "recipe",
    name = "sapphire-5",
	category = "crafting-with-fluid",
	energy_required = 75,
    ingredients =
    {
	  {"sapphire-4", 15},
	  {"stone", 100},
    },
    result = "sapphire-5",
  },
  --[[USELESS ORE GRINDING]]--
  {
    type = "recipe",
    name = "stone-1",
    icon = "__base__/graphics/icons/stone.png",
    subgroup = "uselessprocessing",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {type="item", name="ruby-orex", amount=1}
    },
    results = 
	{
      {type="item", name="stone", amount_min=1, amount_max=6, probability=1},
      --{type="item", name="sand", amount_min=1, amount_max=50, probability=0.2},
	},
  },
  {
    type = "recipe",
    name = "stone-2",
    icon = "__base__/graphics/icons/stone.png",
    subgroup = "uselessprocessing",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {type="item", name="topaz-orex", amount=1}
    },
    results = 
	{
      {type="item", name="stone", amount_min=1, amount_max=4, probability=1},
      --{type="item", name="sand", amount_min=1, amount_max=150, probability=0.2},
	},
  },
  {
    type = "recipe",
    name = "stone-3",
    icon = "__base__/graphics/icons/stone.png",
    subgroup = "uselessprocessing",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {type="item", name="emerald-orex", amount=1}
    },
    results = 
	{
      {type="item", name="stone", amount_min=1, amount_max=5, probability=1},
      --{type="item", name="sand", amount_min=1, amount_max=100, probability=0.2},
	},
  },
  {
    type = "recipe",
    name = "stone-4",
    icon = "__base__/graphics/icons/stone.png",
    subgroup = "uselessprocessing",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {type="item", name="diamond-orex", amount=1}
    },
    results = 
	{
      {type="item", name="stone", amount_min=1, amount_max=2, probability=1},
      --{type="item", name="sand", amount_min=1, amount_max=250, probability=0.25},
	},
  },
  {
    type = "recipe",
    name = "stone-5",
    icon = "__base__/graphics/icons/stone.png",
    subgroup = "uselessprocessing",
	category = "crafting-with-fluid",
	energy_required = 50,
    ingredients =
    {
	  {type="item", name="sapphire-orex", amount=1}
    },
    results = 
	{
      {type="item", name="stone", amount_min=1, amount_max=4, probability=1},
      --{type="item", name="sand", amount_min=1, amount_max=150, probability=0.2},
	},
  },
}
)
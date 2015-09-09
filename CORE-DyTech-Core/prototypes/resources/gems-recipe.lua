data:extend(
{
  --[[GEM WORKING]]--
  {
    type = "recipe",
    name = "crystal-ruby",
	category = "crafting-with-fluid",
	energy_required = 20,
    enabled = true,
    ingredients =
    {
	  {"crystal", 1},
    },
    result = "raw-ruby"
  },
  {
    type = "recipe",
    name = "crystal-sapphire",
	category = "crafting-with-fluid",
	energy_required = 35,
    enabled = true,
    ingredients =
    {
	  {"crystal", 1},
    },
    result = "raw-sapphire"
  },
  {
    type = "recipe",
    name = "crystal-emerald",
	category = "crafting-with-fluid",
	energy_required = 100,
    enabled = true,
    ingredients =
    {
	  {"crystal", 1},
	  {"coal", 10},
    },
    result = "raw-emerald"
  },
  {
    type = "recipe",
    name = "crystal-topaz",
	category = "crafting-with-fluid",
	energy_required = 60,
    enabled = true,
    ingredients =
    {
	  {"crystal", 1},
	  {"coal", 25},
    },
    result = "raw-topaz"
  },
  {
    type = "recipe",
    name = "crystal-diamond",
	category = "crafting-with-fluid",
	energy_required = 140,
    enabled = true,
    ingredients =
    {
	  {"crystal", 1},
	  {"coal", 50},
    },
    result = "raw-diamond"
  },
  -- Cutting Gems
  {
    type = "recipe",
    name = "raw-cut-ruby",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-ruby.png",
	category = "crafting-with-fluid",
    energy_required = 32,
    enabled = true,
    subgroup = "dytech-gem-cut",
    order = "1",
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=50},
	  {type="item", name="raw-ruby", amount=1},
    },
    results = 
	{
	  {type="item", name="cut-ruby", amount=1},
	}
  },
  {
    type = "recipe",
    name = "raw-cut-sapphire",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-sapphire.png",
	category = "crafting-with-fluid",
    energy_required = 56,
    enabled = true,
    subgroup = "dytech-gem-cut",
    order = "2",
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=50},
	  {type="item", name="raw-sapphire", amount=1},
    },
    results = 
	{
	  {type="item", name="cut-sapphire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "raw-cut-emerald",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-emerald.png",
	category = "crafting-with-fluid",
    energy_required = 160,
    enabled = true,
    subgroup = "dytech-gem-cut",
    order = "3",
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=50},
	  {type="item", name="raw-emerald", amount=1},
    },
    results = 
	{
	  {type="item", name="cut-emerald", amount=1},
	}
  },
  {
    type = "recipe",
    name = "raw-cut-topaz",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-topaz.png",
	category = "crafting-with-fluid",
    energy_required = 96,
    enabled = true,
    subgroup = "dytech-gem-cut",
    order = "4",
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=50},
	  {type="item", name="raw-topaz", amount=1},
    },
    results = 
	{
	  {type="item", name="cut-topaz", amount=1},
	}
  },
  {
    type = "recipe",
    name = "raw-cut-diamond",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-diamond.png",
	category = "crafting-with-fluid",
    energy_required = 224,
    enabled = true,
    subgroup = "dytech-gem-cut",
    order = "5",
    ingredients =
    {
	  {type="fluid", name="clean-water", amount=50},
	  {type="item", name="raw-diamond", amount=1},
    },
    results = 
	{
	  {type="item", name="cut-diamond", amount=1},
	}
  },
  -- Compressing Gems
  {
    type = "recipe",
    name = "cut-compressed-ruby",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-ruby.png",
	energy_required = 58,
    enabled = true,
    ingredients =
    {
	  {"cut-ruby", 1},
	  {"stone", 100},
    },
    result = "compressed-ruby"
  },
  {
    type = "recipe",
    name = "cut-compressed-sapphire",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-sapphire.png",
	energy_required = 101,
    enabled = true,
    ingredients =
    {
	  {"cut-sapphire", 1},
	  {"stone", 100},
    },
    result = "compressed-sapphire"
  },
  {
    type = "recipe",
    name = "cut-compressed-emerald",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-emerald.png",
	energy_required = 288,
    enabled = true,
    ingredients =
    {
	  {"cut-emerald", 1},
	  {"stone", 100},
    },
    result = "compressed-emerald"
  },
  {
    type = "recipe",
    name = "cut-compressed-topaz",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-topaz.png",
	energy_required = 173,
    enabled = true,
    ingredients =
    {
	  {"cut-topaz", 1},
	  {"stone", 100},
    },
    result = "compressed-topaz"
  },
  {
    type = "recipe",
    name = "cut-compressed-diamond",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-diamond.png",
	energy_required = 403,
    enabled = true,
    ingredients =
    {
	  {"cut-diamond", 1},
	  {"stone", 100},
    },
    result = "compressed-diamond"
  },
}
)
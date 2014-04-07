data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-tool-1",
	category = "metallurgy-tool",
    energy_required = 0.25,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=30},
    },
    results = 
	{
	  {type="item", name="iron-axe", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tool-2",
	category = "metallurgy-tool",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=38},
	  {type="fluid", name="molten-iron", amount=7.5},
    },
    results = 
	{
	  {type="item", name="steel-axe", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-tool-3",
	category = "metallurgy-tool",
    energy_required = 0.75,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-tungsten", amount=120},
	  {type="fluid", name="molten-gunmetal", amount=18},
    },
    results = 
	{
	  {type="item", name="tungsten-axe", amount=1}
	}
  },
}
)
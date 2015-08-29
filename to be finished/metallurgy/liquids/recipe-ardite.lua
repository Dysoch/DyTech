data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-ardite-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-ardite.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-ardite-ore", amount=1},
	  {type="fluid", name="lava-1800", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-ardite", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-ardite-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/ardite/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-ardite", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results = 
	{
      {type="item", name="ardite-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "ardite-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/ardite/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-ardite-ore", 1}},
    result = "ardite-plate"
  },
}
)
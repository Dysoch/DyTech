data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-zinc-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-zinc.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-zinc-ore", amount=1},
	  {type="fluid", name="lava-800", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-zinc", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-zinc-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-zinc", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="zinc-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "zinc-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-zinc-ore", 1}},
    result = "zinc-plate"
  },
}
)
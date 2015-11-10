data:extend(
{
  {
    type = "recipe",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
	enabled = true,
	category = "crystalizing",
    energy_required = 2,
    subgroup = "dytech-metallurgy-plates-mid",
    ingredients =
    {
      {type="fluid", name="molten-pig-iron", amount=1},
    },
    results = 
	{
      {type="item", name="pig-iron-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "molten-pig-iron",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
	enabled = true,
	category = "melting",
    energy_required = 2,
    subgroup = "dytech-metallurgy-plates-mid",
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="item", name="coal", amount=1},
      {type="fluid", name="oxygen", amount=1},
    },
    results = 
	{
      {type="fluid", name="molten-pig-iron", amount=1},
    },
  },
}
)

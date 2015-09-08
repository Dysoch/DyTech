data:extend(
{
  {
    type = "recipe",
    name = "blister-steel-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/steel/blister.png",
	enabled = true,
	category = "reduction",
    energy_required = 2,
    subgroup = "dytech-metallurgy-plates-early",
    order = "steel-blister",
    ingredients =
    {
      {type="item", name="iron-plate", amount=2},
    },
    results = 
	{
      {type="item", name="blister-steel-plate", amount=1},
      {type="fluid", name="carbon-dioxide", amount=1},
    },
  },
}
)

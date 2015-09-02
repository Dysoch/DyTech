data:extend(
{
  {
    type = "recipe",
    name = "chalcopyrite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "centrifuge",
    subgroup = "dytech-metallurgy-raw-ores-processing",
    enabled = true,
    ingredients =
    {
	  {type="item", name="chalcopyrite-ore", amount=2},
	  {type="fluid", name="lava", amount=1},
    },
    results =
    {
	  {type="item", name="iron-ore", amount=1},
	  {type="item", name="copper-sulfide", amount=2},
    }
  }
})
data:extend(
{
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "centrifuge",
    subgroup = "dytech-metallurgy-raw-ores-processing",
    enabled = true,
    ingredients =
    {
	  {type="item", name="hematite-ore", amount=2},
	  {type="fluid", name="lava", amount=1},
	  {type="fluid", name="water", amount=1},
    },
    results =
    {
	  {type="item", name="iron-ore", amount=3},
	  {type="fluid", name="oxygen", amount=5},
    }
  }
})
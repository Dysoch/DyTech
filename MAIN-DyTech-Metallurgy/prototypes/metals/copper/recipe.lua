data.raw.recipe["copper-plate"].subgroup = "dytech-metallurgy-plates-early"
data.raw.recipe["copper-plate"].order = "copper"
data.raw.recipe["copper-plate"].category = "roasting"
data.raw.recipe["copper-plate"].icon = data.raw.item["copper-plate"].icon
data.raw.recipe["copper-plate"].ingredients = {
	{type="item", name="copper-sulfide", amount=2},
}
data.raw.recipe["copper-plate"].results = {
	{type="fluid", name="sulfur-dioxide", amount=0.5},
	{type="item", name="copper-plate", amount=3}
}
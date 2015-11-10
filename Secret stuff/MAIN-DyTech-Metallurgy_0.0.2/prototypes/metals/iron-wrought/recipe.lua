data.raw.recipe["iron-plate"].subgroup = "dytech-metallurgy-plates-early"
data.raw.recipe["iron-plate"].order = "iron-wrought"
data.raw.recipe["iron-plate"].category = "blooming"
data.raw.recipe["iron-plate"].icon = data.raw.item["iron-plate"].icon
data.raw.recipe["iron-plate"].enabled = true
data.raw.recipe["iron-plate"].ingredients = {
	{type="item", name="iron-ore", amount=2},
	{type="item", name="charcoal", amount=1}
}
data.raw.recipe["iron-plate"].results = {
	{type="fluid", name="carbon-monoxide", amount=1},
	{type="item", name="iron-plate", amount=1}
}
data:extend({
	{
		type = "item",
		name = "sodium-carbonate",
		order = "a-a",
		stack_size= 64,
		flags = { "goes-to-main-inventory" },
		icon = "__F-mod__/resources/icons/sodium-carbonate.png",
		subgroup = "raw-resource",
	},

	
	  {
		type = "recipe",
		name = "sodium-carbonate",
		category = "smelting",
		energy_required = 500,
		enabled = "true",
		subgroup="raw-resource",
		ingredients = {{"white-wood",1}},
		result = "sodium-carbonate",
	},
})
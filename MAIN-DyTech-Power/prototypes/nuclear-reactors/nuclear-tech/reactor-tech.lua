data:extend(
{
	{
		type = "technology",
		name = "nuclear-reactor",
		icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor-tech.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "nuclear-reactor"
			},
			{
				type = "unlock-recipe",
				recipe = "chemical-processor"
			}
		},
		prerequisites = {"productivity-module-3"},
		unit =
		{
			count = 500,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1}
			},
			time = 30
		},
		order = "a-b"
	}
}
)
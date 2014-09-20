-- Un-comment the research below to enable picking up of compression chests.
-- NOTE: you must also set local maximumPickedUpCompressionChests = 0 in DyTech-Storage\control.lua

data:extend(
{
  {
    type = "technology",
    name = "chest-1",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-medium"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
    order = "c-1",
  },
  {
    type = "technology",
    name = "chest-2",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-big"
      },
    },
    prerequisites = {"chest-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "chest-3",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-medium"
      },
    },
    prerequisites = {"chest-2", "construction-robotics", "logistic-system"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "chest-4",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-big"
      },
    },
    prerequisites = {"chest-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-4",
	upgrade = true,
  },
  {
	type = "technology",
	name = "move-compression-chest",
	icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
	prerequisites = {"logistics-3", "alien-technology"},
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "compression-mover"
		}
	},
	unit =
	{
		count = 60,
		ingredients =
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 2},
				{"alien-science-pack", 1}
			},
		time = 45,
	},
	order = "e-a-b"
  }
		--[[,
		{
			type = "technology",
			name = "pickup-compression-chest-count-1",
			icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
			enabled = false,
			prerequisites = {"move-compression-chest"},
			unit =
			{
				count = 400,
				ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 2},
					{"science-pack-3", 2},
					{"alien-science-pack", 1}
				},
				time = 45,
				
			},
			upgrade = "true",
			order = "e-a-b"
		},
		{
			type = "technology",
			name = "pickup-compression-chest-count-2",
			icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
			prerequisites = {"pickup-compression-chest-count-1"},
			unit =
			{
				count = 800,
				ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 2},
					{"science-pack-3", 2},
					{"alien-science-pack", 1}
				},
				time = 45,
				
			},
			upgrade = "true",
			order = "e-a-b"
		},
		{
			type = "technology",
			name = "pickup-compression-chest-count-3",
			icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
			prerequisites = {"pickup-compression-chest-count-2"},
			unit =
			{
				count = 1000,
				ingredients =
				{
					{"science-pack-1", 3},
					{"science-pack-2", 3},
					{"science-pack-3", 2},
					{"alien-science-pack", 1}
				},
				time = 45,
				
			},
			upgrade = "true",
			order = "e-a-b"
		}
		,
		{
			type = "technology",
			name = "pickup-compression-chest-count-4",
			icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
			prerequisites = {"pickup-compression-chest-count-3"},
			unit =
			{
				count = 1200,
				ingredients =
				{
					{"science-pack-1", 3},
					{"science-pack-2", 3},
					{"science-pack-3", 3},
					{"alien-science-pack", 2}
				},
				time = 45,
				
			},
			upgrade = "true",
			order = "e-a-b"
		}
		,
		{
			type = "technology",
			name = "pickup-compression-chest-count-5",
			icon = "__DyTech-Storage__/graphics/technology/picked-up-chest-count.png",
			prerequisites = {"pickup-compression-chest-count-4"},
			unit =
			{
				count = 1400,
				ingredients =
				{
					{"science-pack-1", 3},
					{"science-pack-2", 3},
					{"science-pack-3", 3},
					{"alien-science-pack", 3}
				},
				time = 45,
				
			},
			upgrade = "true",
			order = "e-a-b"
		}
		--]]
}
)
data:extend(
{ 
  {
    type = "recipe",
    name = "small-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-small-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
	  {type="item", name="small-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=2},
	  {type="item", name="chitin", amount=1},
	}
  },
  {
    type = "recipe",
    name = "medium-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-medium-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
	  {type="item", name="medium-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=8},
	  {type="item", name="chitin", amount=2},
	}
  },
  {
    type = "recipe",
    name = "big-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-big-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
	  {type="item", name="big-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=5},
	  {type="item", name="chitin", amount=3},
	}
  },
  {
    type = "recipe",
    name = "berserk-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-berserk-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="sulfuric-acid", amount=0.25},
	  {type="item", name="berserk-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=6},
	  {type="item", name="chitin", amount=2},
	  {type="item", name="raw-ruby", amount=1},
	}
  },
  {
    type = "recipe",
    name = "elder-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-elder-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="sulfuric-acid", amount=0.5},
	  {type="item", name="elder-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=8},
	  {type="item", name="chitin", amount=3},
	  {type="item", name="raw-sapphire", amount=1},
	}
  },
  --[[{
    type = "recipe",
    name = "biter-ripper-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-ripper-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
	  {type="item", name="biter-ripper-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=3},
	  {type="item", name="chitin", amount=1},
	  {type="item", name="topaz-3", amount=1},
	}
  },]]--
  {
    type = "recipe",
    name = "king-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-king-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="sulfuric-acid", amount=0.75},
	  {type="item", name="king-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=10},
	  {type="item", name="chitin", amount=4},
	  {type="item", name="raw-emerald", amount=1},
	}
  },
  {
    type = "recipe",
    name = "queen-corpse",
    category = "crafting-with-fluid",
    energy_required = 15,
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-queen-corpse.png",
    subgroup = "dytech-combat-corpses",
    ingredients =
    {
	  {type="fluid", name="sulfuric-acid", amount=1},
	  {type="item", name="queen-corpse", amount=1},
    },
    results = 
	{
	  {type="item", name="bone", amount=9},
	  {type="item", name="chitin", amount=2},
	  {type="item", name="queen-egg", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dytech-alien-artifact",
    ingredients =
    {
      {"queen-egg", 1},
    },
    result = "alien-artifact",
	result_count = 4
  },
}
)
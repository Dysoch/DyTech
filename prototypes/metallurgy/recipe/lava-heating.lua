data:extend(
{
  {
    type = "recipe",
    name = "lava-800",
	enabled = false,
	category = "lava",
    energy_required = 0.5,
    ingredients =
    {
	  {type="fluid", name="lava-600", amount=1},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-800", amount=0.95}
	}
  },
  {
    type = "recipe",
    name = "lava-1000",
	enabled = false,
	category = "lava",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="lava-800", amount=0.95},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-1000", amount=0.9}
	}
  },
  {
    type = "recipe",
    name = "lava-1200",
	enabled = false,
	category = "lava",
    energy_required = 1.5,
    ingredients =
    {
	  {type="fluid", name="lava-1000", amount=0.9},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-1200", amount=0.85}
	}
  },
  {
    type = "recipe",
    name = "lava-1400",
	enabled = false,
	category = "lava",
    energy_required = 2,
    ingredients =
    {
	  {type="fluid", name="lava-1200", amount=0.85},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-1400", amount=0.8}
	}
  },
  {
    type = "recipe",
    name = "lava-1600",
	enabled = false,
	category = "lava",
    energy_required = 2.5,
    ingredients =
    {
	  {type="fluid", name="lava-1400", amount=0.8},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-1600", amount=0.75}
	}
  },
  {
    type = "recipe",
    name = "lava-1800",
	enabled = false,
	category = "lava",
    energy_required = 3,
    ingredients =
    {
	  {type="fluid", name="lava-1600", amount=0.75},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-1800", amount=0.7}
	}
  },
  {
    type = "recipe",
    name = "lava-2000",
	enabled = false,
	category = "lava",
    energy_required = 3.5,
    ingredients =
    {
	  {type="fluid", name="lava-1800", amount=0.7},
	  {type="fluid", name="liquid-air", amount=1},
    },
    results = 
	{
	  {type="fluid", name="lava-2000", amount=0.65}
	}
  },
}
)
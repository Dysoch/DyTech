data:extend(
{
  {
    type = "technology",
    name = "basic-laser-defense-equipment-1",
    icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
    prerequisites = {"basic-laser-defense-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-laser-defense-equipment-2"
      }
    },
    unit =
    {
      count = 300,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "b-l-d-e-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "basic-laser-defense-equipment-2",
    icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
    prerequisites = {"basic-laser-defense-equipment-1"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-laser-defense-equipment-3"
      }
    },
    unit =
    {
      count = 900,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "b-l-d-e-3",
	upgrade = true,
  },
  
}
)

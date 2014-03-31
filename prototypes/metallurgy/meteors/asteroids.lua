data:extend(
{
  {
    type = "container",
    name = "meteor-asteroid-1",
    icon = "__DyTech-Graphics__/graphics/icons/meteor.png",
    flags = {"placeable-neutral"},
    minable =
    {
      hardness = 15,
      mining_particle = "gem-particle",
      mining_time = 10,
      results =
      {
        {
          name = "iron-ore",
          amount_min = 0,
          amount_max = 25,
          probability = 0.1
        },
        {
          name = "copper-ore",
          amount_min = 0,
          amount_max = 25,
          probability = 0.1
        },
        {
          name = "coal",
          amount_min = 0,
          amount_max = 100,
          probability = 0.1
        },
        {
          name = "stone",
          amount_min = 0,
          amount_max = 40,
          probability = 0.2
        },
        {
          name = "sand",
          amount_min = 0,
          amount_max = 1000,
          probability = 0.25
        },
        {
          name = "zinc-ore",
          amount_min = 0,
          amount_max = 10,
          probability = 0.05
        },
        {
          name = "silver-ore",
          amount_min = 0,
          amount_max = 10,
          probability = 0.06
        },
        {
          name = "lead-ore",
          amount_min = 0,
          amount_max = 10,
          probability = 0.05
        },
        {
          name = "gold-ore",
          amount_min = 0,
          amount_max = 10,
          probability = 0.05
        },
        {
          name = "tin-ore",
          amount_min = 0,
          amount_max = 10,
          probability = 0.05
        },
      }
    },
    max_health = 10,
	inventory_size = 1,
    collision_box = {{-2.5, -2.5}, {2.5, 2.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    picture =
	{
        filename = "__DyTech-Graphics__/graphics/entity/meteor/meteor-large-01.png",
        priority = "extra-high",
        width = 155,
        height = 118,
        shift = {1.1, -1}
    },
  },
}
)
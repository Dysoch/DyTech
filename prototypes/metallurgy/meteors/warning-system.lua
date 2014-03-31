data:extend(
{
  {
    type = "container",
    name = "meteor-warning",
    icon = "__DyTech-Graphics__/graphics/icons/meteor.png",
    flags = {"placeable-neutral"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "stone"},
    max_health = 1,
	inventory_size = 1,
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture =
	{
        filename = "__DyTech-Graphics__/graphics/entity/meteor/meteor-warning.png",
        priority = "extra-high",
        width = 155,
        height = 118,
        shift = {1.1, -1}
    },
  },
}
)
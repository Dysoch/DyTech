data:extend(
{
  {
    type = "container",
	inventory_size = 1,
    name = "rubber-tree",
    icon = "__base__/graphics/icons/dry-tree.png",
    flags = {"placeable-neutral", "breaths-air"},
	emissions_per_tick = -0.5,
    minable = {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 1,
    },
    max_health = 10,
    collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
    selection_box = {{-0.8, -2.2}, {0.8, 0.8}},
	drawing_box = {{-0.8, -2.8}, {0.8, 0.8}},
    picture ={
        filename = "__DyTech-Graphics__/graphics/entity/rubber-tree/big-tree-01.png",
        priority = "extra-high",
        width = 155,
        height = 118,
        shift = {1.1, -1}
    },
  },
}
)
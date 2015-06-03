data:extend(
{ 
  {
    type = "item",
    name = "mold-machine",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "machine",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-machine",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"assembling-machine-2", 1}
    },
    result = "mold-machine"
  },
  {
    type = "technology",
    name = "molds-machine",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-machine"
      },
    },
    prerequisites = {"lava-04", "water-cleaning"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "molds-machine",
  },
}
)
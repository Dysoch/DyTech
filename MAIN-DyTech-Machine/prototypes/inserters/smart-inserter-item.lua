data.raw["item"]["burner-inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["basic-inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["long-handed-inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["fast-inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["smart-inserter"].subgroup = "inserters-dytech-1"

data:extend(
{
  {
    type = "item",
    name = "inserter-close-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-close-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-2",
    order = "i-c-s",
    place_result = "inserter-close-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-close-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-2",
    order = "i-b-s",
    place_result = "inserter-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-long-close-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-1",
    order = "i-l-s",
    place_result = "inserter-long-smart",
    stack_size = 50
  },  {
    type = "item",
    name = "inserter-long-short-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-long-short-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-1",
    order = "i-l-s-s",
    place_result = "inserter-long-short-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-short-close-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-long-short-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-2",
    order = "i-l-s-c-s",
    place_result = "inserter-long-short-close-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-close-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-long-close-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-2",
    order = "i-l-c-s",
    place_result = "inserter-long-close-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-fast-close-smart",
    icon = "__base__/graphics/icons/smart-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-2",
    order = "i-f-c-s",
    place_result = "inserter-fast-close-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-veryfast-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-veryfast-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-5",
    order = "i-v-f-s",
    place_result = "inserter-veryfast-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-veryfast-close-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/inserter-veryfast-close-smart.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-5",
    order = "i-v-f-c-s",
    place_result = "inserter-veryfast-close-smart",
    stack_size = 50
  },
  -- BruteMans Additional F & VF Long Arms
  {
    type = "item",
    name = "inserter-long-fast-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-fast-smart-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-4",
    order = "i-l-f-s",
    place_result = "inserter-long-fast-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-fast-smart-short",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-fast-smart-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-4",
    order = "i-l-f-s-s",
    place_result = "inserter-long-fast-smart-short",
    stack_size = 50
  },  
  {
    type = "item",
    name = "inserter-long-fast-smart-close",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-fast-smart-close-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-4",
    order = "i-l-f-s-c",
    place_result = "inserter-long-fast-smart-close",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-fast-smart-close-short",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-fast-smart-close-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-4",
    order = "i-l-f-s-c-s",
    place_result = "inserter-long-fast-smart-close-short",
    stack_size = 50
  },  
  {
    type = "item",
    name = "inserter-long-veryfast-smart",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-veryfast-smart-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-7",
    order = "i-l-v-f-s",
    place_result = "inserter-long-veryfast-smart",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-veryfast-smart-short",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-veryfast-smart-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-7",
    order = "i-l-v-f-s-s",
    place_result = "inserter-long-veryfast-smart-short",
    stack_size = 50
  },  
  {
    type = "item",
    name = "inserter-long-veryfast-smart-close",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-veryfast-smart-close-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-7",
    order = "i-l-v-f-s-c",
    place_result = "inserter-long-veryfast-smart-close",
    stack_size = 50
  },
  {
    type = "item",
    name = "inserter-long-veryfast-smart-close-short",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/icons/long-veryfast-smart-close-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserters-dytech-7",
    order = "i-l-v-f-s-c-s",
    place_result = "inserter-long-veryfast-smart-close-short",
    stack_size = 50
  },  
}
)
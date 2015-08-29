require("prototypes.pipes.pipe-functions")

Pipe_mk2 = {r=0, g=0.749, b=1, a=1}
Pipe_mk3 = {r=0.867, g=0.627, b=0.867, a=1}
Pipe_mk4 = {r=1, g=0.843, b=0, a=1}
Pipe_mk5 = {r=0, g=1, b=0.498, a=1}

data.raw["pipe-to-ground"]["pipe-to-ground"].fast_replaceable_group = "pipe-to-ground"
table.insert(data.raw["pipe-to-ground"]["pipe-to-ground"].flags,"fast-replaceable-no-build-while-moving")

data:extend({
  {
    type = "pipe-to-ground",
    name = "pipe-to-ground-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/pipes/icons/pipe-to-ground-mk2.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-to-ground-mk2"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "pipe-to-ground",
    fluid_box =
    {
      base_area = 2.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    pictures = PipeToGroundPicturesDyTech(Pipe_mk2),
  },
  {
    type = "pipe-to-ground",
    name = "pipe-to-ground-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/pipes/icons/pipe-to-ground-mk3.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-to-ground-mk3"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "pipe-to-ground",
    fluid_box =
    {
      base_area = 5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    pictures = PipeToGroundPicturesDyTech(Pipe_mk3),
  },
  {
    type = "pipe-to-ground",
    name = "pipe-to-ground-mk4",
    icon = "__MAIN-DyTech-Machine__/graphics/pipes/icons/pipe-to-ground-mk4.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-to-ground-mk4"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "pipe-to-ground",
    fluid_box =
    {
      base_area = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 40
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    pictures = PipeToGroundPicturesDyTech(Pipe_mk4),
  },
  {
    type = "pipe-to-ground",
    name = "pipe-to-ground-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/pipes/icons/pipe-to-ground-mk5.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-to-ground-mk5"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "pipe-to-ground",
    fluid_box =
    {
      base_area = 20,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 50
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    pictures = PipeToGroundPicturesDyTech(Pipe_mk5),
  },
}
)

pipecoverspictures = function()
  return {
    north =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    east =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
      priority = "extra-high",
      width = 32,
      height = 32
    },
    south =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
      priority = "extra-high",
      width = 46,
      height = 52
    },
    west =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
      priority = "extra-high",
      width = 32,
      height = 32
    }
  }
end
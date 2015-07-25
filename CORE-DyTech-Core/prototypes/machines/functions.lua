pipecoverspictures = function()
return 
  {
    north =
    {
      filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
      priority = "extra-high",
      width = 44,
      height = 32,
    --  shift = {0.03125, 0.3125}      
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

function assembler3pipepictures()
return
  {
    north =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/pipe-north.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {0.03125, 0.3125}
    },
    east =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/pipe-east.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      --shift = {-0.78125, 0.15625}
      shift = {-0.53125, 0.15625}
    },
    south =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/pipe-south.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = {0.03125, -1.0625}
    },
    west =
    {
      filename = "__base__/graphics/entity/assembling-machine-3/pipe-west.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      --shift = {0.8125, 0}
      shift = {0.5625, -0.03125}
    }
  }
end
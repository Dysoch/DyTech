require "prototypes.prototype-creation"
require "prototypes.override-functions"

data:extend(
{ 
  {
    type = "recipe",
    name = "coal-ruby",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-ruby.png",
	energy_required = 120,
    enabled = true,
    ingredients =
    {
	  {"coal", 100},
    },
    result = "raw-ruby"
  },
  {
    type = "recipe",
    name = "coal-sapphire",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-sapphire.png",
	energy_required = 240,
    enabled = true,
    ingredients =
    {
	  {"coal", 100},
    },
    result = "raw-sapphire"
  },
  {
    type = "recipe",
    name = "coal-emerald",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-emerald.png",
	energy_required = 360,
    enabled = true,
    ingredients =
    {
	  {"coal", 100},
    },
    result = "raw-emerald"
  },
  {
    type = "recipe",
    name = "coal-topaz",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-topaz.png",
	energy_required = 180,
    enabled = true,
    ingredients =
    {
	  {"coal", 100},
    },
    result = "raw-topaz"
  },
  {
    type = "recipe",
    name = "coal-diamond",
	category = "compressing",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-diamond.png",
	energy_required = 600,
    enabled = true,
    ingredients =
    {
	  {"coal", 100},
    },
    result = "raw-diamond"
  },
}
)
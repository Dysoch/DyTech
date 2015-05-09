require "config"
data:extend(
{
  {
    type = "item",
    name = "nuclear-reactor",
    icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor.png",
    flags = {"goes-to-quickbar"},
	subgroup = "dytech-nuclear-machines",
    order = "01",
    place_result = "nuclear-reactor",
    stack_size = 1
  },
  {
	type = "item",
	name = "nuclear-reactor-container",
	icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor.png",
	flags = {"goes-to-quickbar"},
	subgroup = "dytech-nuclear-machines",
	order = "02",
	place_result = "nuclear-reactor-container",
	stack_size = 1
  },
  {
	type = "item",
	name = "chemical-processor",
	icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/chemical-processor.png",
	flags = {"goes-to-quickbar"},
	subgroup = "dytech-nuclear-machines",
	order = "03",
	place_result = "chemical-processor",
	stack_size = 1
  }
}
)
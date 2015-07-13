require "prototypes.internal-config"

data.raw["accumulator"]["basic-accumulator"].fast_replaceable_group = "accumulator"
data.raw["accumulator"]["basic-accumulator"].max_health = Health[2]
data.raw["accumulator"]["basic-accumulator"].resistances = Resistances[2]
data.raw["accumulator"]["basic-accumulator"].energy_source.buffer_capacity = Accumulators.Buffer.normal[1]
data.raw["accumulator"]["basic-accumulator"].energy_source.input_flow_limit = Accumulators.Input.normal[1]
data.raw["accumulator"]["basic-accumulator"].energy_source.output_flow_limit = Accumulators.Output.normal[1]

data:extend(
{
	CreateAccumulator("basic-accumulator mk2", "normal", 2, "__MAIN-DyTech-Power__/graphics\accumulators/basic-accumulator2.png"),
	CreateAccumulator("basic-accumulator mk3", "normal", 3, "__MAIN-DyTech-Power__/graphics\accumulators/basic-accumulator3.png"),
	CreateAccumulator("basic-accumulator mk4", "normal", 4, "__MAIN-DyTech-Power__/graphics\accumulators/basic-accumulator4.png"),
	CreateAccumulator("basic-accumulator mk5", "normal", 5, "__MAIN-DyTech-Power__/graphics\accumulators/basic-accumulator5.png"),
	CreateAccumulator("basic-accumulator mk6", "normal", 6, "__MAIN-DyTech-Power__/graphics\accumulators/basic-accumulator6.png")
})
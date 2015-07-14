require "prototypes.internal-config"
require "prototypes.functions"

data.raw["boiler"]["boiler"].energy_consumption = Boilers["normal"].KW1
data.raw["boiler"]["boiler"].burner.effectivity = Boilers.Normal.effectivity1
data.raw["boiler"]["boiler"].max_health = Health.Tier1
data.raw["boiler"]["boiler"].resistances = Resistances.Tier1

data:extend(
{
	CreatureBoiler("boiler-mk2", "normal", 2, "__MAIN-DyTech-Power__/graphics/boilers/icons/boiler2.png"),
	CreatureBoiler("boiler-mk3", "normal", 3, "__MAIN-DyTech-Power__/graphics/boilers/icons/boiler2.png"),
	CreatureBoiler("boiler-mk4", "normal", 4, "__MAIN-DyTech-Power__/graphics/boilers/icons/boiler2.png"),
	CreatureBoiler("boiler-mk5", "normal", 5, "__MAIN-DyTech-Power__/graphics/boilers/icons/boiler2.png")
})
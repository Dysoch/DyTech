require "prototypes.internal-config"

data.raw["generator"]["steam-engine"].fast_replaceable_group = "steam-engine"
data.raw["generator"]["steam-engine"].fluid_usage_per_tick = SteamEngines["normal"].fluid_usage_per_tick[1]
data.raw["generator"]["steam-engine"].effectivity = SteamEngines["normal"].effectivity[1]
data.raw["generator"]["steam-engine"].max_health = Health[1]
data.raw["generator"]["steam-engine"].resistances = Resistances[1]

data:extend(
{
	--[[mk1]]--
	CreateSteamEngine("steam-engine-primary", "normal", 1, "primary", "__base__/graphics/icons/steam-engine.png"),
	CreateSteamEngine("steam-engine-terciary", "normal", 1, "terciary", "__base__/graphics/icons/steam-engine.png"),
	--[[mk2]]--
	CreateSteamEngine("steam-engine-primary-mk2", "normal", 2, "primary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png"),
	CreateSteamEngine("steam-engine-secondary-mk2", "normal", 2, "secondary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png"),
	CreateSteamEngine("steam-engine-terciary-mk2", "normal", 2, "terciary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png"),
	--[[mk3]]--
	CreateSteamEngine("steam-engine-primary-mk3", "normal", 3, "primary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png"),
	CreateSteamEngine("steam-engine-secondary-mk3", "normal", 3, "secondary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png"),
	CreateSteamEngine("steam-engine-terciary-mk3", "normal", 3, "terciary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png"),
	--[[mk4]]--
	CreateSteamEngine("steam-engine-primary-mk4", "normal", 4, "primary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png"),
	CreateSteamEngine("steam-engine-secondary-mk4", "normal", 4, "secondary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png"),
	CreateSteamEngine("steam-engine-terciary-mk4", "normal", 4, "terciary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png"),
	--[[mk5]]--
	CreateSteamEngine("steam-engine-primary-mk5", "normal", 5, "primary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png"),
	CreateSteamEngine("steam-engine-secondary-mk5", "normal", 5, "secondary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png"),
	CreateSteamEngine("steam-engine-terciary-mk5", "normal", 5, "terciary", "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png")
  
})
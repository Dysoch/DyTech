require "prototypes.internal-config"
require "prototypes.functions"

data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel" 
data.raw["solar-panel"]["solar-panel"].max_health = Health[1]
data.raw["solar-panel"]["solar-panel"].resistances = Resistances[1]
data.raw["solar-panel"]["solar-panel"].production = SolarPanels["normal"].Output[1]

data:extend(
{
		--[[Tier 1]]--
	CreateSolarPanel("solar-panel-secondary", "normal", 1, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel1.png"),
	--[[Tier 2]]--
	CreateSolarPanel("solar-panel-primary mk2", "normal", 2, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel2.png"),
	CreateSolarPanel("solar-panel-secondary mk2", "normal", 2, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel2.png"),
	--[[Tier 3]]--
	CreateSolarPanel("solar-panel-primary mk3", "normal", 3, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel3.png"),
	CreateSolarPanel("solar-panel-secondary mk3", "normal", 3, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel3.png"),
	--[[Tier 4]]--
	CreateSolarPanel("solar-panel-primary mk4", "normal", 4, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel4.png"),
	CreateSolarPanel("solar-panel-secondary mk4", "normal", 4, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel4.png"),
	--[[Tier 5]]--
	CreateSolarPanel("solar-panel-primary mk5", "normal", 5, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel5.png"),
	CreateSolarPanel("solar-panel-secondary mk5", "normal", 5, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel5.png")	
})
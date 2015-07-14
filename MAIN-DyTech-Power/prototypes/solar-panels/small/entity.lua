require "prototypes.internal-config"
require "prototypes.functions"

require "prototypes.solar-panels.solar-types"

data:extend(
{
	--[[Tier 1]]--
	CreateSolarPanel("small-solar-panel-primary", "small", 1, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel1.png"),
	CreateSolarPanel("small-solar-panel-secondary", "small", 1, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel.png"),
	--[[Tier 2]]--
	CreateSolarPanel("small-solar-panel-primary mk2", "small", 2, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel2.png"),
	CreateSolarPanel("small-solar-panel-secondary mk2", "small", 2, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel2.png"),
	--[[Tier 3]]--
	CreateSolarPanel("small-solar-panel-primary mk3", "small", 3, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel3.png"),
	CreateSolarPanel("small-solar-panel-secondary mk3", "small", 3, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel3.png"),
	--[[Tier 4]]--
	CreateSolarPanel("small-solar-panel-primary mk4", "small", 4, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel4.png"),
	CreateSolarPanel("small-solar-panel-secondary mk4", "small", 4, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel4.png"),
	--[[Tier 5]]--
	CreateSolarPanel("small-solar-panel-primary mk5", "small", 5, "primary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel5.png"),
	CreateSolarPanel("small-solar-panel-secondary mk5", "small", 5, "secondary-output", "__MAIN-DyTech-Power__/graphics/solar-panels/icons/solar-panel5.png")	
})
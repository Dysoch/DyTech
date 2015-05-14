--require "prototypes.internal-config"

Tint = {
	mk2 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk3 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk4 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk5 = {r=0.545, g=0.271, b=0.075, a=0.9},
	mk6 = {r=0.545, g=0.271, b=0.075, a=0.9}
}

SolarPanels = {
	Small = {
		Tier1 = "1kW",
		Tier2 = "1kW",
		Tier3 = "1kW",
		Tier4 = "1kW",
		Tier5 = "1kW"
	},
	Normal = {
		Tier1 = "90kW",
		Tier2 = "204kW",
		Tier3 = "690kW",
		Tier4 = "3504kW",
		Tier5 = "26693kW"
	},
	Large = {
		Tier1 = "kW",
		Tier2 = "kW",
		Tier3 = "kW",
		Tier4 = "kW",
		Tier5 = "kW"
	}
}

SteamEngines = {
	Small = {
		effectivity1 = 1,
		effectivity2 = 2,
		effectivity3 = 3,
		effectivity4 = 4,
		effectivity5 = 5,
		fluid_usage_per_tick1 = 1,
		fluid_usage_per_tick2 = 1,
		fluid_usage_per_tick3 = 1,
		fluid_usage_per_tick4 = 1,
		fluid_usage_per_tick5 = 1
	},
	Normal = {
		effectivity1 = 1.43,
		effectivity2 = 2.04,
		effectivity3 = 2.92,
		effectivity4 = 4.18,
		effectivity5 = 5.98,
		fluid_usage_per_tick1 = 0.08,
		fluid_usage_per_tick2 = 0.124,
		fluid_usage_per_tick3 = 0.193,
		fluid_usage_per_tick4 = 0.3,
		fluid_usage_per_tick5 = 0.465
	},
	Large = {
		effectivity1 = 1,
		effectivity2 = 1,
		effectivity3 = 1,
		effectivity4 = 1,
		effectivity5 = 1,
		fluid_usage_per_tick1 = 1,
		fluid_usage_per_tick2 = 1,
		fluid_usage_per_tick3 = 1,
		fluid_usage_per_tick4 = 1,
		fluid_usage_per_tick5 = 1
	}
}

Boilers = {
	KW1 = "668kW",
	KW2 = "1594kW",
	KW3 = "3842kW",
	KW4 = "9316kW",
	KW5 = "22713kW",
	HighKW1 = "1669kW",
	HighKW2 = "3984kW",
	HighKW3 = "9604kW",
	HighKW4 = "23289kW",
	HighKW5 = "56781kW",
	effectivity1 = 1,
	effectivity2 = 2,
	effectivity3 = 4,
	effectivity4 = 8,
	effectivity5 = 16
}

Health = {
	Small = {
		Tier1 = 100,
		Tier2 = 250,
		Tier3 = 500,
		Tier4 = 1000,
		Tier5 = 1750,
		Tier6 = 2500,
		Tier7 = 4000,
		Tier8 = 7500,
		Tier9 = 12500,
		Tier10 = 20000
	},
	Normal = {
		Tier1 = 100,
		Tier2 = 250,
		Tier3 = 500,
		Tier4 = 1000,
		Tier5 = 1750,
		Tier6 = 2500,
		Tier7 = 4000,
		Tier8 = 7500,
		Tier9 = 12500,
		Tier10 = 20000
	},
	Large = {
		Tier1 = 100,
		Tier2 = 250,
		Tier3 = 500,
		Tier4 = 1000,
		Tier5 = 1750,
		Tier6 = 2500,
		Tier7 = 4000,
		Tier8 = 7500,
		Tier9 = 12500,
		Tier10 = 20000
	},
}

Resistances = {
	Small = {
		Tier1 = {
			{type = "fire", decrease = 0, percent = 0},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 0},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier2 = {
			{type = "fire", decrease = 0, percent = 20},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 5},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier3 = {
			{type = "fire", decrease = 0, percent = 25},
			{type = "physical", decrease = 0, percent = 5},
			{type = "impact", decrease = 0, percent = 5},
			{type = "explosion", decrease = 0, percent = 10},
			{type = "acid", decrease = 0, percent = 5},
			{type = "laser", decrease = 0, percent = 5}},
		Tier4 = {
			{type = "fire", decrease = 2.5, percent = 40},
			{type = "physical", decrease = 0, percent = 10},
			{type = "impact", decrease = 0, percent = 10},
			{type = "explosion", decrease = 0, percent = 15},
			{type = "acid", decrease = 0, percent = 10},
			{type = "laser", decrease = 0, percent = 10}},
		Tier5 = {
			{type = "fire", decrease = 5, percent = 60},
			{type = "physical", decrease = 2.5, percent = 15},
			{type = "impact", decrease = 2.5, percent = 15},
			{type = "explosion", decrease = 0, percent = 25},
			{type = "acid", decrease = 0, percent = 15},
			{type = "laser", decrease = 0, percent = 25}},
		Tier6 = {
			{type = "fire", decrease = 10, percent = 75},
			{type = "physical", decrease = 5, percent = 25},
			{type = "impact", decrease = 5, percent = 25},
			{type = "explosion", decrease = 4, percent = 25},
			{type = "acid", decrease = 5, percent = 25},
			{type = "laser", decrease = 10, percent = 40}},
		Tier7 = {
			{type = "fire", decrease = 15, percent = 90},
			{type = "physical", decrease = 10, percent = 37.5},
			{type = "impact", decrease = 12.5, percent = 37.5},
			{type = "explosion", decrease = 6, percent = 37.5},
			{type = "acid", decrease = 15, percent = 37.5},
			{type = "laser", decrease = 25, percent = 45}},
		Tier8 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 22.5, percent = 50},
			{type = "impact", decrease = 20, percent = 50},
			{type = "explosion", decrease = 12.5, percent = 50},
			{type = "acid", decrease = 25, percent = 50},
			{type = "laser", decrease = 40, percent = 50}},
		Tier9 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 35, percent = 65},
			{type = "impact", decrease = 25, percent = 65},
			{type = "explosion", decrease = 25, percent = 65},
			{type = "acid", decrease = 35, percent = 65},
			{type = "laser", decrease = 55, percent = 60}},
		Tier10 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 50, percent = 80},
			{type = "impact", decrease = 35, percent = 80},
			{type = "explosion", decrease = 40, percent = 80},
			{type = "acid", decrease = 45, percent = 80},
			{type = "laser", decrease = 75, percent = 85}},
		Fire = {
			{type = "fire", decrease = 0, percent = 75}},
	},
	Normal = {
		Tier1 = {
			{type = "fire", decrease = 0, percent = 0},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 0},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier2 = {
			{type = "fire", decrease = 0, percent = 20},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 5},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier3 = {
			{type = "fire", decrease = 0, percent = 25},
			{type = "physical", decrease = 0, percent = 5},
			{type = "impact", decrease = 0, percent = 5},
			{type = "explosion", decrease = 0, percent = 10},
			{type = "acid", decrease = 0, percent = 5},
			{type = "laser", decrease = 0, percent = 5}},
		Tier4 = {
			{type = "fire", decrease = 2.5, percent = 40},
			{type = "physical", decrease = 0, percent = 10},
			{type = "impact", decrease = 0, percent = 10},
			{type = "explosion", decrease = 0, percent = 15},
			{type = "acid", decrease = 0, percent = 10},
			{type = "laser", decrease = 0, percent = 10}},
		Tier5 = {
			{type = "fire", decrease = 5, percent = 60},
			{type = "physical", decrease = 2.5, percent = 15},
			{type = "impact", decrease = 2.5, percent = 15},
			{type = "explosion", decrease = 0, percent = 25},
			{type = "acid", decrease = 0, percent = 15},
			{type = "laser", decrease = 0, percent = 25}},
		Tier6 = {
			{type = "fire", decrease = 10, percent = 75},
			{type = "physical", decrease = 5, percent = 25},
			{type = "impact", decrease = 5, percent = 25},
			{type = "explosion", decrease = 4, percent = 25},
			{type = "acid", decrease = 5, percent = 25},
			{type = "laser", decrease = 10, percent = 40}},
		Tier7 = {
			{type = "fire", decrease = 15, percent = 90},
			{type = "physical", decrease = 10, percent = 37.5},
			{type = "impact", decrease = 12.5, percent = 37.5},
			{type = "explosion", decrease = 6, percent = 37.5},
			{type = "acid", decrease = 15, percent = 37.5},
			{type = "laser", decrease = 25, percent = 45}},
		Tier8 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 22.5, percent = 50},
			{type = "impact", decrease = 20, percent = 50},
			{type = "explosion", decrease = 12.5, percent = 50},
			{type = "acid", decrease = 25, percent = 50},
			{type = "laser", decrease = 40, percent = 50}},
		Tier9 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 35, percent = 65},
			{type = "impact", decrease = 25, percent = 65},
			{type = "explosion", decrease = 25, percent = 65},
			{type = "acid", decrease = 35, percent = 65},
			{type = "laser", decrease = 55, percent = 60}},
		Tier10 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 50, percent = 80},
			{type = "impact", decrease = 35, percent = 80},
			{type = "explosion", decrease = 40, percent = 80},
			{type = "acid", decrease = 45, percent = 80},
			{type = "laser", decrease = 75, percent = 85}},
		Fire = {
			{type = "fire", decrease = 0, percent = 75}},
	},
	Large = {
		Tier1 = {
			{type = "fire", decrease = 0, percent = 0},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 0},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier2 = {
			{type = "fire", decrease = 0, percent = 20},
			{type = "physical", decrease = 0, percent = 0},
			{type = "impact", decrease = 0, percent = 0},
			{type = "explosion", decrease = 0, percent = 5},
			{type = "acid", decrease = 0, percent = 0},
			{type = "laser", decrease = 0, percent = 0}},
		Tier3 = {
			{type = "fire", decrease = 0, percent = 25},
			{type = "physical", decrease = 0, percent = 5},
			{type = "impact", decrease = 0, percent = 5},
			{type = "explosion", decrease = 0, percent = 10},
			{type = "acid", decrease = 0, percent = 5},
			{type = "laser", decrease = 0, percent = 5}},
		Tier4 = {
			{type = "fire", decrease = 2.5, percent = 40},
			{type = "physical", decrease = 0, percent = 10},
			{type = "impact", decrease = 0, percent = 10},
			{type = "explosion", decrease = 0, percent = 15},
			{type = "acid", decrease = 0, percent = 10},
			{type = "laser", decrease = 0, percent = 10}},
		Tier5 = {
			{type = "fire", decrease = 5, percent = 60},
			{type = "physical", decrease = 2.5, percent = 15},
			{type = "impact", decrease = 2.5, percent = 15},
			{type = "explosion", decrease = 0, percent = 25},
			{type = "acid", decrease = 0, percent = 15},
			{type = "laser", decrease = 0, percent = 25}},
		Tier6 = {
			{type = "fire", decrease = 10, percent = 75},
			{type = "physical", decrease = 5, percent = 25},
			{type = "impact", decrease = 5, percent = 25},
			{type = "explosion", decrease = 4, percent = 25},
			{type = "acid", decrease = 5, percent = 25},
			{type = "laser", decrease = 10, percent = 40}},
		Tier7 = {
			{type = "fire", decrease = 15, percent = 90},
			{type = "physical", decrease = 10, percent = 37.5},
			{type = "impact", decrease = 12.5, percent = 37.5},
			{type = "explosion", decrease = 6, percent = 37.5},
			{type = "acid", decrease = 15, percent = 37.5},
			{type = "laser", decrease = 25, percent = 45}},
		Tier8 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 22.5, percent = 50},
			{type = "impact", decrease = 20, percent = 50},
			{type = "explosion", decrease = 12.5, percent = 50},
			{type = "acid", decrease = 25, percent = 50},
			{type = "laser", decrease = 40, percent = 50}},
		Tier9 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 35, percent = 65},
			{type = "impact", decrease = 25, percent = 65},
			{type = "explosion", decrease = 25, percent = 65},
			{type = "acid", decrease = 35, percent = 65},
			{type = "laser", decrease = 55, percent = 60}},
		Tier10 = {
			{type = "fire", decrease = 0, percent = 100},
			{type = "physical", decrease = 50, percent = 80},
			{type = "impact", decrease = 35, percent = 80},
			{type = "explosion", decrease = 40, percent = 80},
			{type = "acid", decrease = 45, percent = 80},
			{type = "laser", decrease = 75, percent = 85}},
		Fire = {
			{type = "fire", decrease = 0, percent = 75}},
	},
}
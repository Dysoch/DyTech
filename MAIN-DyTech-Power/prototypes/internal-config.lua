--require "prototypes.internal-config"
require "config"

Tint = {
	{r=0.000, g=0.000, b=0.000, a=0.0},
	{r=0.545, g=0.271, b=0.075, a=6.0},
	{r=0.502, g=0.502, b=0.000, a=6.0},
	{r=0.235, g=0.702, b=0.443, a=6.0},
	{r=0.275, g=0.510, b=0.706, a=6.0},
	{r=0.402, g=0.408, b=0.933, a=6.0}
}

Reactor = {
	Fuel = {
		u-235-3-0 = "1MJ",
	}
}

Accumulators = {
	Buffer = 
	{
		small = 
		{
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ"
		},
		normal = 
		{
			"60MJ",
			"60MJ",
			"60MJ",
			"120MJ",
			"120MJ",
			"900MJ"
		},
		large = 
		{
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ",
			"1MJ"
		}
	},
	Input = 
	{
		small = 
		{
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW"
		},
		normal = 
		{
			"2100kW",
			"2100kW",
			"6000kW",
			"4500kW",
			"12000kW",
			"4500kW"
		},
		large = 
		{
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW"
		}
	},
	Output = 
	{
		small = 
		{
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW"
		},
		normal = 
		{
			"6000kW",
			"6000kW",
			"2100kW",
			"12000kW",
			"4500kW",
			"4500kW"
		},
		large = 
		{
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW",
			"1kW"
		}
	},
	Collision_box = 
	{
		small = {{-0.9, -0.9}, {0.9, 0.9}}
		normal = {{-0.9, -0.9}, {0.9, 0.9}}
		large = {{-1.35, -1.35}, {1.35, 1.35}}
	}
	Selection_box = 
	{
		small = {{-1, -1}, {1, 1}}
		normal = {{-1, -1}, {1, 1}}
		large = {{-1.5, -1.5}, {1.5, 1.5}}
	}
	Scale = 
	{
		small = 0.66
		normal = 1
		large = 1.33
	}
}	

SolarPanels = {
	small = 
	{
		Output = 
		{
			"34kW",
			"73kW", --72.53333
			"230kW",
			"1090kW",
			"7118kW"
		},
		Collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    Selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	},
	normal = 
	{
		Output = 
		{
			"90kW",
			"204kW",
			"690kW",
			"3504kW",
			"26693kW"
		},
		Collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    Selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	},
	large = 
	{
		Output = 
		{
			"176kW",
			"453kW", --453.3333
			"1717kW",
			"9656kW",
			"80672kW"
		},
		Collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    Selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	}
}

SteamEngines = {
	small = 
	{
		effectivity = 
		{
			1,
			2,
			3.
			4,
			5
		},
		fluid_usage_per_tick1 = 
		{
			1,
			1,
			1,
			1,
			1,
		},
		collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
		scale = 1
	},
	normal = 
	{
		effectivity = 
		{
			1.43,
			2.04,
			2.92,
			4.18,
			5.98
		},
		fluid_usage_per_tick1 = 
		{
			0.08,
			0.124,
			0.193,
			0.3,
			0.465,
		},
		collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
		scale = 1
	},
	large = 
	{
		effectivity = 
		{
			1,
			1,
			1.
			1,
			1
		},
		fluid_usage_per_tick1 = 
		{
			1,
			1,
			1,
			1,
			1,
		},
		collision_box = {{-1.9, -3.2}, {1.9, 3.2}},
		selection_box = {{-2, -3.3}, {2, 3.3}},
		scale = 1.33
	},
	high = 
	{
		effectivity = 
		{
			1.43,
			2.04,
			2.92,
			4.18,
			5.98
		},
		fluid_usage_per_tick1 = 
		{
			0.08,
			0.124,
			0.193,
			0.3,
			0.465,
		},
		collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
		selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
		scale = 1
	}
}

Boilers = {
	small = {
		Energy_consumption = {
		"668kW",
		"1594kW",
		"3842kW",
		"9316kW",
		"22713kW"
		},
		Effectivity = {
		1,
		2,
		4,
		8,
		16
		}
	},
	normal = {
		Energy_consumption = {
		"668kW",
		"1594kW",
		"3842kW",
		"9316kW",
		"22713kW"
		},
		Effectivity = {
		1,
		2,
		4,
		8,
		16
		}
	},
	large = {
		Energy_consumption = {
		"668kW",
		"1594kW",
		"3842kW",
		"9316kW",
		"22713kW"
		},
		Effectivity = {
		1,
		2,
		4,
		8,
		16
		}
	},
	high = {
		Energy_consumption = {
		"1669kW",
		"3984kW",
		"9604kW",
		"23289kW",
		"56781kW",
		},
		Effectivity = {
		1,
		2,
		4,
		8,
		16
		}
	}
}


Health = {
	100,
	250,
	500,
	1000,
	1750,
	2500,
	4000,
	7500,
	12500,
	20000
}

Resistances = {
	{
	  {type = "fire", decrease = 0, percent = 0},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 0},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}
	},
	{
      {type = "fire", decrease = 0, percent = 20},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 5},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}
	},
	{
      {type = "fire", decrease = 0, percent = 25},
      {type = "physical", decrease = 0, percent = 5},
      {type = "impact", decrease = 0, percent = 5},
      {type = "explosion", decrease = 0, percent = 10},
      {type = "acid", decrease = 0, percent = 5},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 5}
			},
	{
      {type = "fire", decrease = 2.5, percent = 40},
      {type = "physical", decrease = 0, percent = 10},
      {type = "impact", decrease = 0, percent = 10},
      {type = "explosion", decrease = 0, percent = 15},
      {type = "acid", decrease = 0, percent = 10},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 10}
	},
	{
      {type = "fire", decrease = 5, percent = 60},
      {type = "physical", decrease = 2.5, percent = 15},
      {type = "impact", decrease = 2.5, percent = 15},
      {type = "explosion", decrease = 0, percent = 25},
      {type = "acid", decrease = 0, percent = 15},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 25}
	},
	{
      {type = "fire", decrease = 10, percent = 75},
      {type = "physical", decrease = 5, percent = 25},
      {type = "impact", decrease = 5, percent = 25},
      {type = "explosion", decrease = 4, percent = 25},
      {type = "acid", decrease = 5, percent = 25},
      {type = "plasma", decrease = 15, percent = 10},
      {type = "laser", decrease = 10, percent = 40}
	},
	{
      {type = "fire", decrease = 15, percent = 90},
      {type = "physical", decrease = 10, percent = 37.5},
      {type = "impact", decrease = 12.5, percent = 37.5},
      {type = "explosion", decrease = 6, percent = 37.5},
      {type = "acid", decrease = 15, percent = 37.5},
      {type = "plasma", decrease = 30, percent = 20},
      {type = "laser", decrease = 25, percent = 45}
	},
	{
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 22.5, percent = 50},
      {type = "impact", decrease = 20, percent = 50},
      {type = "explosion", decrease = 12.5, percent = 50},
      {type = "acid", decrease = 25, percent = 50},
      {type = "plasma", decrease = 45, percent = 30},
      {type = "laser", decrease = 40, percent = 50}
	},
	{
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 35, percent = 65},
      {type = "impact", decrease = 25, percent = 65},
      {type = "explosion", decrease = 25, percent = 65},
      {type = "acid", decrease = 35, percent = 65},
      {type = "plasma", decrease = 60, percent = 40},
      {type = "laser", decrease = 55, percent = 60}
	},
	{
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 50, percent = 80},
      {type = "impact", decrease = 35, percent = 80},
      {type = "explosion", decrease = 40, percent = 80},
      {type = "acid", decrease = 45, percent = 80},
      {type = "plasma", decrease = 75, percent = 50},
      {type = "laser", decrease = 75, percent = 85}
	},
	Fire =
	{
      {type = "fire", decrease = 0, percent = 75}
	},
}
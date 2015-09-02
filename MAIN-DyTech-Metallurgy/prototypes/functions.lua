-- require "prototypes.functions"

CLEAN_ORES = {"zinc-ore","lead-ore"}
ORES = {"iron-ore","copper-ore","zinc-ore","lead-ore"}

RESOURCES = {
	{
		Name = "bauxite",
		Hardness = 2.75,
		Range = 1.1,
		Time = 1.5,
		Color = {r=165, g=42, b=42},
		Result = "stone",
		Amount_Needed = 6
	},
	{
		Name = "anthracite",
		Hardness = 1.4,
		Range = 1.2,
		Time = 0.5,
		Color = {r=165, g=42, b=42},
		Result = "coal",
		Amount_Needed = 1
	},
	{
		Name = "chalcopyrite",
		Hardness = 2.3,
		Range = 1.25,
		Time = 0.5,
		Color = {r=181, g=166, b=66},
		Result = "copper-plate",
		Amount_Needed = 4
	},
	{
		Name = "chromite",
		Hardness = 5.5,
		Range = 1.05,
		Time = 1.5,
		Color = {r=38, g=38, b=38},
		Result = "stone",
		Amount_Needed = 2
	},
	{
		Name = "cinnabar",
		Hardness = 3,
		Range = 1.03,
		Time = 1.5,
		Color = {r=255, g=36, b=0},
		Result = "stone",
		Amount_Needed = 3
	},
	{
		Name = "fluorite",
		Hardness = 4,
		Range = 1.08,
		Time = 1.5,
		Color = {r=255, g=255, b=255},
		Result = "stone",
		Amount_Needed = 4
	},
	{
		Name = "galena",
		Hardness = 2.5,
		Range = 1.04,
		Time = 1.5,
		Color = {r=166, g=166, b=166},
		Result = "stone",
		Amount_Needed = 5
	},
	{
		Name = "hematite",
		Hardness = 2.4,
		Range = 1.3,
		Time = 0.5,
		Color = {r=64, g=0, b=0},
		Result = "iron-plate",
		Amount_Needed = 5
	},
	{
		Name = "limonite",
		Hardness = 1.8,
		Range = 1.4,
		Time = 0.5,
		Color = {r=140, g=117, b=0},
		Result = "stone",
		Amount_Needed = 1
	},
	{
		Name = "magnetite",
		Hardness = 5.5,
		Range = 0.98,
		Time = 1.5,
		Color = {r=26, g=0, b=4},
		Result = "stone",
		Amount_Needed = 4
	},
	{
		Name = "malachite",
		Hardness = 3.75,
		Range = 0.99,
		Time = 1.5,
		Color = {r=80, g=200, b=120},
		Result = "stone",
		Amount_Needed = 7
	},
	{
		Name = "pyrite",
		Hardness = 6.25,
		Range = 1.01,
		Time = 1.5,
		Color = {r=150, g=25, b=0},
		Result = "stone",
		Amount_Needed = 5
	},
	{
		Name = "sphalerite",
		Hardness = 3.5,
		Range = 1.02,
		Time = 1.5,
		Color = {r=150, g=75, b=0},
		Result = "stone",
		Amount_Needed = 2
	},
}

CHEMICALS = {"ammonia","argon","carbon-dioxide","carbon-monoxide","helium","hydrogen","methane","nitric-oxide","nitrogen-dioxide","nitrous-oxide","oxygen","ozone","sulfur-dioxide","sulfur-monoxide","sulfur-trioxide","water"}

INTERMEDIATES = {"charcoal","carbon","silicon","brick","clay","copper-sulfide"}

RECIPES = {"blooming","crystalizing","electrolys","centrifuge"}
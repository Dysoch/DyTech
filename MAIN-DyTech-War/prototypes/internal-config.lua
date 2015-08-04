-- 	require "prototypes.internal-config"
-- 	Health.Tier
-- 	Resistances.Tier

SniperBaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
SniperAnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun1BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun1AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun2BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun2AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun3BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun3AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun4BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun4AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun5BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun5AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun6BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun6AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}
Gun7BaseTint = {r=0.698, g=0.133, b=0.133, a=0.6}
Gun7AnimationTint = {r=0.804, g=0.361, b=0.361, a=0.85}

ModularArmor = {
	GridTier1 = {width = 5, height = 5},
	GridTier2 = {width = 7, height = 7},
	GridTier3 = {width = 10, height = 10},
	GridTier4 = {width = 14, height = 14},
	GridTier5 = {width = 18, height = 18},
	GridTier6 = {width = 22, height = 22},
	GridTier7 = {width = 26, height = 26},
	GridTier8 = {width = 30, height = 30},
	Dura1 = 15000,
	Dura2 = 19950,
	Dura3 = 26533,
	Dura4 = 35289,
	Dura5 = 46935,
	Dura6 = 62423,
	Dura7 = 83023,
	Dura8 = 110421,
}

Capsules = {
	Stationary_Extra_Factor = 5,
	Live_Marauder = 60 * 60 * 5,
	Live_Sharpshooter = 60 * 60 * 10,
	Live_Frenzy = 60 * 60 * 15,
}

Enemies = {
	BerserkerScale = 1.25,
	ElderScale = 1.5,
	KingScale = 2.0,
	QueenScale = 2.5,
	Young_Factor = 0.5,
	Teen_Factor = 0.75,
	Adult_Factor = 1,
	Berserker_Tint1 = {r=0.698, g=0.133, b=0.133, a=0.6},
	Berserker_Tint2 = {r=0.804, g=0.361, b=0.361, a=0.85},
	Elder_Tint1 = {r=0, g=0, b=0.804, a=0.6},
	Elder_Tint2 = {r=0.686, g=0.933, b=0.933, a=0.85},
	King_Tint1 = {r=0, g=1, b=0.498, a=0.6},
	King_Tint2 = {r=0.486, g=0.988, b=0, a=0.85},
	Queen_Tint1 = {r=0.729, g=0.333, b=0.827, a=0.6},
	Queen_Tint2 = {r=0.502, g=0, b=0.502, a=0.85},
	Dyzilla_Unit_1_Scale = 0.25,
	Dyzilla_Unit_2_Scale = 0.5,
	Dyzilla_Unit_3_Scale = 1,
	Dyzilla_Unit_4_Scale = 1.5,
	Dyzilla_Unit_1_Tint1 = {r=1, g=0.271, b=0, a=0.6},
	Dyzilla_Unit_1_Tint2 = {r=1, g=0.549, b=0, a=0.85},
	Dyzilla_Unit_2_Tint1 = {r=0.722, g=0.525, b=0.043, a=0.6},
	Dyzilla_Unit_2_Tint2 = {r=0.804, g=0.522, b=0.247, a=0.85},
	Dyzilla_Unit_3_Tint1 = {r=0.133, g=0.545, b=0.133, a=0.6},
	Dyzilla_Unit_3_Tint2 = {r=0.180, g=0.545, b=0.341, a=0.85},
	Dyzilla_Unit_4_Tint1 = {r=0.184, g=0.310, b=0.310, a=0.6},
	Dyzilla_Unit_4_Tint2 = {r=0, g=0, b=0, a=0.85},
}

Bullets = {
	Poison1 = {amount = 2.5, type = "poison"},
	Poison2 = {amount = 5, type = "poison"},
	Poison3 = {amount = 10, type = "poison"},
	Acid1 = {amount = 5, type = "acid"},
	Acid2 = {amount = 10, type = "acid"},
	Acid3 = {amount = 25, type = "acid"},
	Fire1 = {amount = 5, type = "fire"},
	Fire2 = {amount = 15, type = "fire"},
	Fire3 = {amount = 25, type = "fire"},
	Plasma1 = {amount = 10, type = "plasma"},
	Plasma2 = {amount = 25, type = "plasma"},
	Plasma3 = {amount = 40, type = "plasma"},
}

Health = {
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
}

Resistances = {
	Tier1 = {
	  {type = "fire", decrease = 0, percent = 0},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 0},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}},
	Tier2 = {
      {type = "fire", decrease = 0, percent = 20},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 5},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}},
	Tier3 = {
      {type = "fire", decrease = 0, percent = 25},
      {type = "physical", decrease = 0, percent = 5},
      {type = "impact", decrease = 0, percent = 5},
      {type = "explosion", decrease = 0, percent = 10},
      {type = "acid", decrease = 0, percent = 5},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 5}},
	Tier4 = {
      {type = "fire", decrease = 2.5, percent = 40},
      {type = "physical", decrease = 0, percent = 10},
      {type = "impact", decrease = 0, percent = 10},
      {type = "explosion", decrease = 0, percent = 15},
      {type = "acid", decrease = 0, percent = 10},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 10}},
	Tier5 = {
      {type = "fire", decrease = 5, percent = 60},
      {type = "physical", decrease = 2.5, percent = 15},
      {type = "impact", decrease = 2.5, percent = 15},
      {type = "explosion", decrease = 0, percent = 25},
      {type = "acid", decrease = 0, percent = 15},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 25}},
	Tier6 = {
      {type = "fire", decrease = 10, percent = 75},
      {type = "physical", decrease = 5, percent = 25},
      {type = "impact", decrease = 5, percent = 25},
      {type = "explosion", decrease = 4, percent = 25},
      {type = "acid", decrease = 5, percent = 25},
      {type = "plasma", decrease = 15, percent = 10},
      {type = "laser", decrease = 10, percent = 40}},
	Tier7 = {
      {type = "fire", decrease = 15, percent = 90},
      {type = "physical", decrease = 10, percent = 37.5},
      {type = "impact", decrease = 12.5, percent = 37.5},
      {type = "explosion", decrease = 6, percent = 37.5},
      {type = "acid", decrease = 15, percent = 37.5},
      {type = "plasma", decrease = 30, percent = 20},
      {type = "laser", decrease = 25, percent = 45}},
	Tier8 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 22.5, percent = 50},
      {type = "impact", decrease = 20, percent = 50},
      {type = "explosion", decrease = 12.5, percent = 50},
      {type = "acid", decrease = 25, percent = 50},
      {type = "plasma", decrease = 45, percent = 30},
      {type = "laser", decrease = 40, percent = 50}},
	Tier9 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 35, percent = 65},
      {type = "impact", decrease = 25, percent = 65},
      {type = "explosion", decrease = 25, percent = 65},
      {type = "acid", decrease = 35, percent = 65},
      {type = "plasma", decrease = 60, percent = 40},
      {type = "laser", decrease = 55, percent = 60}},
	Tier10 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 50, percent = 80},
      {type = "impact", decrease = 35, percent = 80},
      {type = "explosion", decrease = 40, percent = 80},
      {type = "acid", decrease = 45, percent = 80},
      {type = "plasma", decrease = 75, percent = 50},
      {type = "laser", decrease = 75, percent = 85}},
	Fire = {
      {type = "fire", decrease = 0, percent = 75}},
}
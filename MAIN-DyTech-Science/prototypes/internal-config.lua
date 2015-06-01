-- 	require "prototypes.internal-config"
-- 	Health.Tier
-- 	Resistances.Tier

ModularArmor = {
	GridTier1 = {width = 5, height = 5},
	GridTier2 = {width = 7, height = 7},
	GridTier3 = {width = 10, height = 10},
	GridTier4 = {width = 14, height = 14},
	GridTier5 = {width = 18, height = 18},
	GridTier6 = {width = 22, height = 22},
	GridTier7 = {width = 26, height = 26},
	GridTier8 = {width = 30, height = 30},
	Dura1 = 10000,
	Dura2 = 14000,
	Dura3 = 19000,
	Dura4 = 25000,
	Dura5 = 31000,
	Dura6 = 39000,
	Dura7 = 49000,
	Dura8 = 60000,
}

Capsules = {
	Stationary_Extra_Factor = 5,
	Live_Marauder = 60 * 60 * 5,
	Live_Sharpshooter = 60 * 60 * 10,
	Live_Frenzy = 60 * 60 * 15,
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
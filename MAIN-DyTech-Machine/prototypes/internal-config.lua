--require "prototypes.internal-config"

Liquid_Crafting_Factor = 0.75

PumpingSpeed = {
	Tier1 = 8,
	Tier2 = 12.4,
	Tier3 = 19.3,
	Tier4 = 30,
	Tier5 = 46.5,
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

Tech = {
	Tier1 = {
	  count = 10,
      ingredients = 
	  {
        {"science-pack-1", 1},
      },
      time = 5 },
	Tier2 = {
	  count = 20,
      ingredients = 
	  {
        {"science-pack-1", 1},
      },
      time = 10 },
	Tier3 = {
	  count = 50,
      ingredients = 
	  {
        {"science-pack-1", 1},
      },
      time = 20 },
	Tier4 = {
	  count = 100,
      ingredients = 
	  {
        {"science-pack-1", 1},
      },
      time = 30 },
	Tier5 = {
	  count = 50,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15 },
	Tier6 = {
	  count = 100,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30 },
	Tier7 = {
	  count = 200,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 45 },
	Tier8 = {
	  count = 400,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 60 },
	Tier9 = {
	  count = 250,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30 },
	Tier10 = {
	  count = 500,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 45 },
	Tier11 = {
	  count = 750,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60 },
	Tier12 = {
	  count = 1000,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 75 },
	Tier13 = {
	  count = 500,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30 },
	Tier14 = {
	  count = 1000,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60 },
	Tier15 = {
	  count = 1500,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 90 },
	Tier16 = {
	  count = 2000,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 120 },
}

function TechSpecial(SET, COUNT, AMOUNT, TIME)
	if SET == 1 then
	  return
	{  
	  count = COUNT,
      ingredients = 
	  {
        {"science-pack-1", AMOUNT},
      },
      time = TIME
	}
	elseif SET == 2 then
	  return
	{  
	  count = COUNT,
      ingredients = 
	  {
        {"science-pack-1", AMOUNT},
        {"science-pack-2", AMOUNT},
      },
      time = TIME
	}
	elseif SET == 3 then
	  return
	{  
	  count = COUNT,
      ingredients = 
	  {
        {"science-pack-1", AMOUNT},
        {"science-pack-2", AMOUNT},
        {"science-pack-3", AMOUNT},
      },
      time = TIME
	}
	elseif SET == 4 then
	  return
	{  
	  count = COUNT,
      ingredients = 
	  {
        {"science-pack-1", AMOUNT},
        {"science-pack-2", AMOUNT},
        {"science-pack-3", AMOUNT},
        {"alien-science-pack", AMOUNT},
      },
      time = TIME
	}
	end
end
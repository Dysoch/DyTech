DyTech_Create_Tech_Power({
Name = "high-boilers-1",
Icon = "/boilers/boiler2.png",
Count = 150,
Time = 10,
Prereq = {},
Recipes = {"high-boiler-mk1"},
Ingredients = {Science1 = true, Science2 = false, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-boilers-2",
Icon = "/boilers/boiler2.png",
Count = 150,
Time = 30,
Prereq = {"high-boilers-1"},
Recipes = {"high-boiler-mk2"},
Ingredients = {Science1 = true, Science2 = false, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-boilers-3",
Icon = "/boilers/boiler2.png",
Count = 225,
Time = 60,
Prereq = {"high-boilers-2"},
Recipes = {"high-boiler-mk3"},
Ingredients = {Science1 = true, Science2 = true, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-boilers-4",
Icon = "/boilers/boiler2.png",
Count = 300,
Time = 60,
Prereq = {"high-boilers-3", "steel-processing"},
Recipes = {"high-boiler-mk4"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-boilers-5",
Icon = "/boilers/boiler2.png",
Count = 150,
Time = 30,
Prereq = {"high-boilers-4"},
Recipes = {"high-boiler-mk5"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})
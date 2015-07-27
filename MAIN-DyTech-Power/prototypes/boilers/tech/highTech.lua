Dytech_Create_Tech_Power({
Name = "boilers-1",
Icon = "/boilers/boiler2.png",
Count = 150,
Time = 30,
Prereq = {"tin-processing", "rotor-1"},
Recipes = {"high-boiler-mk2"},
Ingredients = {Science1 = true, Science2 = false, Science3 = false, Science4 = false}})

Dytech_Create_Tech_Power({
Name = "boilers-2",
Icon = "/boilers/boiler2.png",
Count = 225,
Time = 60,
Prereq = {"boilers-1", "lead-processing", "rotor-2"},
Recipes = {"high-boiler-mk3"},
Ingredients = {Science1 = true, Science2 = true, Science3 = false, Science4 = false}})

Dytech_Create_Tech_Power({
Name = "boilers-3",
Icon = "/boilers/boiler2.png",
Count = 300,
Time = 60,
Prereq = {"boilers-2", "steel-processing"},
Recipes = {"high-boiler-mk4"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})

Dytech_Create_Tech_Power({
Name = "boilers-4",
Icon = "/boilers/boiler2.png",
Count = 150,
Time = 30,
Prereq = {"boilers-1", "lead-processing", "rotor-2"},
Recipes = {"high-boiler-mk5"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})
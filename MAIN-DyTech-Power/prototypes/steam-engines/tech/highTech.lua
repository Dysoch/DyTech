DyTech_Create_Tech_Power({
Name = "high-steam-1",
Icon = "steam-engines/high/steam-engine2.png",
Count = 150,
Time = 10,
Prereq = {"steel-processing", "rotor-1"},
Recipes = {"high-steam-engine-primary", "high-steam-engine-secondary", "high-steam-engine-terciary"},
Ingredients = {Science1 = true, Science2 = false, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-steam-2",
Icon = "steam-engines/high/steam-engine2.png",
Count = 150,
Time = 30,
Prereq = {"high-steam-1", "rotor-2", "capacitor-2", "frame-1"},
Recipes = {"high-steam-engine-primary-mk2", "high-steam-engine-secondary-mk2", "high-steam-engine-terciary-mk2"},
Ingredients = {Science1 = true, Science2 = false, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-steam-3",
Icon = "steam-engines/high/steam-engine2.png",
Count = 225,
Time = 60,
Prereq = {"high-steam-2", "rotor-3", "capacitor-3",},
Recipes = {"high-steam-engine-primary-mk3", "high-steam-engine-secondary-mk3", "high-steam-engine-terciary-mk3"},
Ingredients = {Science1 = true, Science2 = true, Science3 = false, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-steam-4",
Icon = "steam-engines/high/steam-engine2.png",
Count = 300,
Time = 60,
Prereq = {"high-steam-3", "frame-2"},
Recipes = {"high-steam-engine-primary-mk4", "high-steam-engine-secondary-mk4", "high-steam-engine-terciary-mk4"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})

DyTech_Create_Tech_Power({
Name = "high-steam-5",
Icon = "steam-engines/high/steam-engine2.png",
Count = 150,
Time = 30,
Prereq = {"high-steam-4", "advanced-processing-unit"},
Recipes = {"high-steam-engine-primary-mk5", "high-steam-engine-secondary-mk5", "high-steam-engine-terciary-mk5"},
Ingredients = {Science1 = true, Science2 = true, Science3 = true, Science4 = false}})
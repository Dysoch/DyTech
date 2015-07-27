table.insert(data.raw["technology"]["tungsten-processing"].effects,{type = "unlock-recipe",recipe = "tungsten-wall"})

DyTech_Create_Tech_War({
	Name = "sand-wall", 
	Icon = "walls/sandwall.png", 
	Count = 50, 
	Time = 30, 
	Prereq = {"gates"}, 
	Recipes = {"sandwall"}, 
	Ingredients = {Science1=true, Science2=true, Science3=false, Science4=false}
})

DyTech_Create_Tech_War({
	Name = "chitin-wall", 
	Icon = "walls/chitin-wall.png", 
	Count = 60, 
	Time = 30, 
	Prereq = {"stone-walls"}, 
	Recipes = {"chitin-wall"}, 
	Ingredients = {Science1=true, Science2=true, Science3=false, Science4=false}
})
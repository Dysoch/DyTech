require("prototypes.override-functions")

--[[ Entities ]]--
data.raw["resource"]["stone"].richness_multiplier = 18850
data.raw["resource"]["stone"].richness_base = 435
data.raw["player"]["player"].inventory_size = 150
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 3
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 8
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      })
	  
--[[ Items ]]--
data.raw["item"]["copper-plate"].stack_size = 200
data.raw["item"]["iron-plate"].stack_size = 200
data.raw["item"]["steel-plate"].stack_size = 200
data.raw["item"]["copper-ore"].stack_size = 200
data.raw["item"]["iron-ore"].stack_size = 200
data.raw["item"]["coal"].stack_size = 200
data.raw["item"]["stone"].stack_size = 200
data.raw["item"]["processing-unit"].stack_size = 200
data.raw["item"]["battery"].stack_size = 200
data.raw["item"]["basic-transport-belt"].stack_size = 100
data.raw["item"]["fast-transport-belt"].stack_size = 100
data.raw["item"]["express-transport-belt"].stack_size = 100

--[[ Recipes ]]--
ChangeRecipe("steam-engine", "iron-gear-wheel", "stone-gear-wheel", 5)
ChangeRecipe("burner-mining-drill", "iron-gear-wheel", "stone-gear-wheel", 3)
ChangeRecipe("burner-inserter", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("offshore-pump", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("science-pack-1", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("basic-transport-belt", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("lab", "iron-gear-wheel", "stone-gear-wheel", 5)
data.raw["recipe"]["iron-gear-wheel"].enabled = false
AddToRecipe("boiler", "rotor-1", 1)
AddToRecipe("radar", "frame-1", 1)
AddToRecipe("basic-mining-drill", "frame-1", 1)
AddToRecipe("solar-panel", "flux-capacitor-1", 1)
AddToRecipe("assembling-machine-2", "capacitor-1", 1)
AddToRecipe("assembling-machine-3", "capacitor-1", 3)
AddToRecipe("car", "rubber", 5)
ChangeRecipe("tank", "iron-gear-wheel", "steel-gear-wheel", 15)
AddToRecipe("diesel-locomotive", "steel-gear-wheel", 5)
AddToRecipe("cargo-wagon", "steel-gear-wheel", 5)
ChangeRecipe("basic-modular-armor", "steel-plate", "lead-plate", 50)
ChangeRecipe("power-armor", "steel-plate", "lead-plate", 150)
ChangeRecipe("power-armor-mk2", "steel-plate", "tungsten-plate", 150)
AddToRecipe("logistic-robot", "capacitor-1", 1)
AddToRecipe("construction-robot", "capacitor-1", 1)
AddToRecipe("roboport", "capacitor-1", 8)
AddToRecipe("basic-accumulator", "flux-capacitor-1", 3)
AddToRecipe("steel-furnace", "frame-1", 1)
ChangeRecipe("electric-furnace", "steel-plate", "tin-plate", 15)
AddToRecipe("electric-furnace", "frame-1", 1)
AddToRecipe("electric-furnace", "capacitor-1", 2)
AddToRecipe("basic-beacon", "capacitor-1", 2)
AddToRecipe("pumpjack", "capacitor-1", 2)
AddToRecipe("pumpjack", "frame-1", 1)
AddToRecipe("oil-refinery", "frame-1", 1)
ChangeRecipe("oil-refinery", "steel-plate", "zinc-plate", 15)
AddToRecipe("battery", "capacitor-1", 1)
AddToRecipe("small-pump", "capacitor-1", 1)
AddToRecipe("chemical-plant", "capacitor-1", 1)
AddToRecipe("chemical-plant", "frame-1", 1)
ChangeRecipe("laser-turret", "battery", "capacitor-1", 2)
ChangeRecipe("tank", "engine-unit", "track", 2)
ChangeRecipe("tank", "iron-gear-wheel", "hull-lower", 1)
ChangeRecipe("tank", "advanced-circuit", "hull-top", 1)
AddToRecipe("tank", "submachine-gun", 1)

--[[ Technologies ]]--
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
AddRequirementToTech("advanced-oil-processing", "water-cleaning")
AddRequirementToTech("sulfur-processing", "water-cleaning")
AddRecipeToTech("steel-processing", "steel-gear-wheel")
AddRecipeToTech("automation", "iron-gear-wheel")
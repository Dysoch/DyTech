require "prototypes.functions"

AddToRecipe("tf-cokery", "frame-1", 1)
AddToRecipe("tf-cokery", "zinc-plate", 2)
AddToRecipe("tf-stone-crusher", "frame-1", 1)
AddToRecipe("tf-stone-crusher", "rotor-1", 2)
AddToRecipe("tf-bioreactor", "frame-3", 1)
AddToRecipe("tf-bioreactor", "rotor-3", 2)
AddToRecipe("tf-biolab", "frame-2", 1)
AddRequirementToTech("tf-fertilizer", "frame-1")
AddRequirementToTech("tf-advanced-biotechnology", "frame-2")
AddRequirementToTech("tf-advanced-biotechnology", "rotor-2")
AddRequirementToTech("tf-coal-processing", "zinc-processing")
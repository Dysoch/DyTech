require "config"
require "prototypes.functions"

-- Treefarm Edits --
if data.raw["item"]["tf-charcoal"] and Treefarm_Uses_DyTech_Items then
require("prototypes.dytech-to-mods.tf-ac")
end

if data.raw["item"]["tf-field"] and Treefarm_Uses_DyTech_Items then
require("prototypes.dytech-to-mods.tf-lite")
end

-- Building Blocks Edits
T1 = "wood"
T2 = "stone"
T3 = "stone-brick"
T4 = "obsidian"
if Building_Blocks then
	if data.raw["item"]["centrifuge"] then AddToRecipe("centrifuge", T2, 2) end
	if data.raw["item"]["compressor"] then AddToRecipe("compressor", T2, 2) end
	if data.raw["item"]["liquid-handler"] then AddToRecipe("liquid-handler", T2, 2) end
	
end
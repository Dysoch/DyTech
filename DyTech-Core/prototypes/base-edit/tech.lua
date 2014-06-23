table.insert(data.raw["technology"]["steel-processing"].effects,{type = "unlock-recipe",recipe = "steel-gear-wheel"})
table.insert(data.raw["technology"]["automation"].effects,{type = "unlock-recipe",recipe = "iron-gear-wheel"})
data.raw["technology"]["advanced-electronics-2"].effects = {{type = "unlock-recipe", recipe = "bundled-wire"}}
table.insert(data.raw["technology"]["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "advanced-processing-unit"})
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
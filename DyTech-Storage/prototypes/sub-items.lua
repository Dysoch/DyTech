local subItems = {}
local newItem
local maximumPickedUpCompressionChests = 5
local entType = "item"
local entName = "compression-chest-mined-"
local entIcon = "__DyTech-Storage__/graphics/icons/compression-chest.png"
local entFlags = {"goes-to-quickbar"}
local entPlaceResult = "compression-chest-mined-"
local entStackSize = 1

for n = 1,maximumPickedUpCompressionChests,1 do
	newItem = {}
	newItem["type"] = entType
	newItem["name"] = entName .. n
	newItem["icon"] = entIcon
	newItem["flags"] = entFlags
	newItem["place_result"] = entPlaceResult .. n
	newItem["stack_size"] = entStackSize
	
	table.insert(subItems, newItem)
end

data:extend(subItems)
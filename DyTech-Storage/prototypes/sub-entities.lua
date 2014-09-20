local subEntities = {}
local newEntity
local maximumPickedUpCompressionChests = 5
local entType = "container"
local entName = "compression-chest-mined-"
local entIcon = "__DyTech-Storage__/graphics/icons/compression-chest.png"
local entFlags = {"placeable-neutral", "player-creation"}
local entMaxHealth = 800
local entCollisonBox = {{-0.35, -0.35}, {0.35, 0.35}}
local entSelectionBox = {{-0.5, -0.5}, {0.5, 0.5}}
local entInventorySize = 1
local entOrder = "a[items]-d[compression-chest]"
local entPicture = {filename = "__DyTech-Storage__/graphics/entity/compression/Compression Chest.png", priority = "extra-high", width = 52, height = 34, shift = {0.2625, 0}}

for n = 1,maximumPickedUpCompressionChests,1 do
	newEntity = {}
	newEntity["type"] = entType
	newEntity["name"] = entName .. n
	newEntity["icon"] = entIcon
	newEntity["flags"] = entFlags
	newEntity["max_health"] = entMaxHealth
	newEntity["collision_box"] = entCollisonBox
	newEntity["selection_box"] = entSelectionBox
	newEntity["inventory_size"] = entInventorySize
	newEntity["order"] = entOrder
	newEntity["picture"] = entPicture
	
	table.insert(subEntities, newEntity)
end

data:extend(subEntities)
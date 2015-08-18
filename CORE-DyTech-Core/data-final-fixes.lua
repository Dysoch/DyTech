require "config"

TechFix = true
ItemFix = false
Fast_Replace_Fix = true

for i, drill in pairs(data.raw["mining-drill"]) do
	if not drill.storage_slots then 
		drill.storage_slots = 6 
	else
		drill.storage_slots = 6 
	end
end

if Config.Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.infinite = true
		v.minimum = 175
		v.normal = 350
	end
end 

if Config.Super_Size_Resources and Config.Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.minimum = 17500
		v.normal = 35000
		v.autoplace.richness_base = Config.Super_Size_Resources_Size
	end
elseif Config.Super_Size_Resources and not Config.Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.autoplace.richness_base = Config.Super_Size_Resources_Size
	end
end

if Config.Resource_Easier_To_Mine then
	for k, v in pairs(data.raw.resource) do
		v.minable.hardness = 0.1
		v.minable.mining_time = 0.1
	end
end

if Config.Technology_Use_Less_Science_Packs then
	for k, v in pairs(data.raw.technology) do
    local TechCount = v.unit.count
		TechCount = ((TechCount+1)-TechCount)
		v.unit.count = TechCount
	end
end

if Config.Technology_Takes_Less_Time then
	for k, v in pairs(data.raw.technology) do
    local TechTime = v.unit.time
		TechTime = ((TechTime+1)-TechTime)
		v.unit.time = TechTime
	end
end

if Config.All_Recipes_Unlocked_From_Start then
	for k, v in pairs(data.raw.recipe) do
		if not v.enabled then
			v.enabled = true
		elseif v.enabled == "false" then
			v.enabled = "true"
		end
	end
end

if Config.Science_Packs_Last_Long then
	data.raw["tool"]["science-pack-1"].durability = 2500
	data.raw["tool"]["science-pack-2"].durability = 2500
	data.raw["tool"]["science-pack-3"].durability = 2500
	data.raw["tool"]["alien-science-pack"].durability = 2500
end

if Config.Stacksize_Increase then
	for k, v in pairs(data.raw.item) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw.ammo) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw.gun) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["repair-tool"]) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["mining-tool"]) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw.tool) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["capsule"]) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["module"]) do
		v.default_request_amount = v.stack_size
		v.stack_size = (v.stack_size*Config.Stacksize_Increase_Factor)
	end
end

if Config.Ammo_Has_Large_Magazine then
	for k, v in pairs(data.raw.ammo) do
		if not v.magazine_size then
			v.magazine_size = 1000
		else
			v.magazine_size = v.magazine_size*1000
		end
	end
end

if Config.Tools_Have_Large_Durability then
	for k, v in pairs(data.raw["mining-tool"]) do
		v.durability = v.durability*1000
	end
end

for k, v in pairs(data.raw.module) do
	if string.sub("productivity-module-", 1, 20) and v.limitation then
		table.insert(v.limitation, "advanced-processing-unit")
		table.insert(v.limitation, "bundled-wire")
		table.insert(v.limitation, "rubber")
		table.insert(v.limitation, "stone-gear-wheel")
		table.insert(v.limitation, "steel-gear-wheel")
		table.insert(v.limitation, "tin-gear-wheel")
		table.insert(v.limitation, "zinc-gear-wheel")
		table.insert(v.limitation, "lead-gear-wheel")
		table.insert(v.limitation, "cobalt-gear-wheel")
		table.insert(v.limitation, "tungsten-gear-wheel")
		table.insert(v.limitation, "frame-1")
		table.insert(v.limitation, "frame-2")
		table.insert(v.limitation, "frame-3")
		table.insert(v.limitation, "frame-4")
		table.insert(v.limitation, "item-exit-1")
		table.insert(v.limitation, "item-exit-2")
		table.insert(v.limitation, "item-exit-3")
		table.insert(v.limitation, "item-exit-4")
		table.insert(v.limitation, "rotor-1")
		table.insert(v.limitation, "rotor-2")
		table.insert(v.limitation, "rotor-3")
		table.insert(v.limitation, "rotor-4")
		table.insert(v.limitation, "blade-1")
		table.insert(v.limitation, "blade-2")
		table.insert(v.limitation, "blade-3")
		table.insert(v.limitation, "capacitor-1")
		table.insert(v.limitation, "capacitor-2")
		table.insert(v.limitation, "capacitor-3")
		table.insert(v.limitation, "capacitor-4")
		table.insert(v.limitation, "flux-capacitor-1")
		table.insert(v.limitation, "flux-capacitor-2")
		table.insert(v.limitation, "flux-capacitor-3")
		table.insert(v.limitation, "flux-capacitor-4")
		table.insert(v.limitation, "sandbag")
		table.insert(v.limitation, "glass")
		table.insert(v.limitation, "zinc-plate")
		table.insert(v.limitation, "tin-plate")
		table.insert(v.limitation, "lead-plate")
		table.insert(v.limitation, "gold-plate")
		table.insert(v.limitation, "silver-plate")
		table.insert(v.limitation, "lead-plate")
		table.insert(v.limitation, "tungsten-plate")
		table.insert(v.limitation, "ardite-plate")
		table.insert(v.limitation, "cobalt-plate")
		table.insert(v.limitation, "bundled-wire")
		table.insert(v.limitation, "advanced-processing-unit")
		table.insert(v.limitation, "bone-charcoal")
		table.insert(v.limitation, "track")
		table.insert(v.limitation, "track-chain-link")
		table.insert(v.limitation, "hull-lower")
		table.insert(v.limitation, "hull-top")
		table.insert(v.limitation, "tank-barrel")
		table.insert(v.limitation, "logic-diamond")
		table.insert(v.limitation, "logic-diamond-processor")
	end
end

if TechFix then
	for k, v in pairs(data.raw.technology) do
		if not v.upgrade then
			v.upgrade = true
		elseif v.upgrade == "false" then
			v.upgrade = "true"
		end
		v.order = v.name
	end
end 

if ItemFix then
	for k, v in pairs(data.raw.item) do
		v.order = v.name
	end
	for k, v in pairs(data.raw.ammo) do
		v.order = v.name
	end
	for k, v in pairs(data.raw.gun) do
		v.order = v.name
	end
	for k, v in pairs(data.raw["repair-tool"]) do
		v.order = v.name
	end
	for k, v in pairs(data.raw["mining-tool"]) do
		v.order = v.name
	end
	for k, v in pairs(data.raw.tool) do
		v.order = v.name
	end
	for k, v in pairs(data.raw["capsule"]) do
		v.order = v.name
	end
	for k, v in pairs(data.raw["module"]) do
		v.order = v.name
	end
end 

if Fast_Replace_Fix then
	for k, v in pairs(data.raw["inserter"]) do
		v.fast_replaceable_group = "inserter"
		v.collision_box = {{-0.15, -0.15}, {0.15, 0.15}}
		v.selection_box = {{-0.4, -0.35}, {0.4, 0.45}}
	end
end
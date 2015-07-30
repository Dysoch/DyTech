require "config"

for i, drill in pairs(data.raw["mining-drill"]) do
  if not drill.storage_slots then drill.storage_slots = 6 end
end

if Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.infinite = true
		v.minimum = 175
		v.normal = 350
	end
end 

if Super_Size_Resources and Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.minimum = 17500
		v.normal = 35000
		v.autoplace.richness_base = 2500000
	end
elseif Super_Size_Resources and not Infinite_Resources then
	for k, v in pairs(data.raw.resource) do
		v.autoplace.richness_base = 2500000
	end
end

if Resource_Easier_To_Mine then
	for k, v in pairs(data.raw.resource) do
		v.minable.hardness = 0.1
		v.minable.mining_time = 0.1
	end
end

if Technology_Use_Less_Science_Packs then
	for k, v in pairs(data.raw.technology) do
    local TechCount = v.unit.count
		TechCount = ((TechCount+1)-TechCount)
		v.unit.count = TechCount
	end
end

if Technology_Takes_Less_Time then
	for k, v in pairs(data.raw.technology) do
    local TechTime = v.unit.time
		TechTime = ((TechTime+1)-TechTime)
		v.unit.time = TechTime
	end
end

if All_Recipes_Unlocked_From_Start then
	for k, v in pairs(data.raw.recipe) do
		if not v.enabled then
			v.enabled = true
		elseif v.enabled == "false" then
			v.enabled = "true"
		end
	end
end

if Science_Packs_Last_Long then
	data.raw["tool"]["science-pack-1"].durability = 500
	data.raw["tool"]["science-pack-2"].durability = 500
	data.raw["tool"]["science-pack-3"].durability = 500
	data.raw["tool"]["alien-science-pack"].durability = 500
end

if Stacksize_Increase then
	for k, v in pairs(data.raw.item) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw.ammo) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw.gun) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["mining-tool"]) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["repair-tool"]) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["capsule"]) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
	for k, v in pairs(data.raw["module"]) do
		v.stack_size = (v.stack_size*Stacksize_Increase_Factor)
	end
end
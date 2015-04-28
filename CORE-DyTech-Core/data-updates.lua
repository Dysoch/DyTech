require "config"

if Infinite_Resources_Cheaty and not Infinite_Resources_Normal then
	for k, v in pairs(data.raw.resource) do
		v.infinite = true
		v.minimum = 17500
		v.normal = 35000
		v.autoplace.richness_base = 2500000
		v.minable.hardness = 0.1
		v.minable.mining_time = 0.25
	end
elseif Infinite_Resources_Normal and not Infinite_Resources_Cheaty then
	for k, v in pairs(data.raw.resource) do
		v.infinite = true
		v.minimum = 175
		v.normal = 350
		v.autoplace.richness_base = 25000
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
end
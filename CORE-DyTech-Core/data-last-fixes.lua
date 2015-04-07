require "config"

if Infinite_Resources_Cheaty and not Infinite_Resources_Normal then
	for k, v in pairs(data.raw.resource) do
		data.raw.resource[k].infinite = true
		data.raw.resource[k].minimum  = 17500
		data.raw.resource[k].normal   = 35000
	end
elseif Infinite_Resources_Normal and not Infinite_Resources_Cheaty then
	for k, v in pairs(data.raw.resource) do
		data.raw.resource[k].infinite = true
		data.raw.resource[k].minimum  = 175
		data.raw.resource[k].normal   = 350
	end
end

if Technology_Use_Less_Science_Packs then
	for k, v in pairs(data.raw.technology) do
		data.raw.technology[k].unit.count = 1
	end
end

if Technology_Takes_Less_Time then
	for k, v in pairs(data.raw.technology) do
		data.raw.technology[k].unit.time = 1
	end
end

if All_Recipes_Unlocked_From_Start then
	for k, v in pairs(data.raw.recipe) do
		if not data.raw.recipe[k].enabled then
			data.raw.recipe[k].enabled = true
		end
	end
end

if Stacksize_Increase then
	for k, v in pairs(data.raw.item) do
		data.raw.item[k].stack_size = (data.raw.item[k].stack_size*Stacksize_Increase_Factor)
	end
end
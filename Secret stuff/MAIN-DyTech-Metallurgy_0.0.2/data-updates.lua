require "config"

if data.raw.fluid["clean-water"] then
	data.raw.item["electrolyser"].subgroup = "dytech-machines-metallurgy"
	data.raw.item["liquid-vent"].subgroup = "dytech-machines-metallurgy"
end

for k, v in pairs(data.raw["mining-tool"]) do
	v.speed = v.speed*2
end
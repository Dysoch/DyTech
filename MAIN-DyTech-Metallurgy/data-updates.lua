require "config"

if data.raw.fluid["clean-water"] then
	data.raw.item["electrolyser"].subgroup = "dytech-machines-metallurgy"
end
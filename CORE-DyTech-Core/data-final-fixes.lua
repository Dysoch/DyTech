require "config"

TechFix = true

if TechFix then
	for k, v in pairs(data.raw.technology) do
		if not v.upgrade then
			v.upgrade = true
		elseif v.upgrade == "false" then
			v.upgrade = "true"
		end
	end
end 
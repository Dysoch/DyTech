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


for k, v in pairs(data.raw.module) do
	if string.sub("productivity-module-", 1, 20) and v.limitation then
		table.insert(v.limitation, "advanced-processing-unit")
		table.insert(v.limitation, "bundled-wire")
		table.insert(v.limitation, "rubber")
		table.insert(v.limitation, "resin")
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
		table.insert(v.limitation, "bone")
		table.insert(v.limitation, "chitin")
		table.insert(v.limitation, "track")
		table.insert(v.limitation, "track-chain-link")
		table.insert(v.limitation, "hull-lower")
		table.insert(v.limitation, "hull-top")
		table.insert(v.limitation, "tank-barrel")
		table.insert(v.limitation, "logic-diamond")
		table.insert(v.limitation, "logic-diamond-processor")
	end
end
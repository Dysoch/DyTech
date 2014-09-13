--Base Edits!
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")

-- Always active!
require("prototypes.item.tools")
require("prototypes.recipe.tools")
require("prototypes.technology.tools")

-- Active When DyTech-Warfare is installed!
if data.raw.item["ruby-4"] then
require("prototypes.item.gems-tools")
require("prototypes.recipe.gems-tools")
require("prototypes.technology.gems-tools")
end

-- Active When DyTech-Metallurgy is installed!
--if data.raw.item["tungsten-ore"] then
--require("prototypes.item.metallurgy-tools")
--require("prototypes.recipe.metallurgy-tools")
--require("prototypes.technology.metallurgy-tools")
--end

-- This next portion is a work in progress!!!!!!!!

-- Database: Work in progress!!!!
-- Strength, Hold, Flexibility and Density have a number for 0 to 10. 0 means a modifier of 0.2 (reduces the stat) and 10 means modifier of 2. 5 is neither an increase or reduction!
-- Flexibility only applies when used as a rod!!!!!!!!!!!!
-- Strength applies when used as a rod or head!!!!!!!!!!!!!
-- Hold applied when used as a handle only!!!!!!!!!!!!!!!!
-- Strength to durability value:
-- strength of 0: 500 durability before modifiers
-- strength of 1: 1000 durability before modifiers
-- strength of 2: 1500 durability before modifiers
-- strength of 3: 2000 durability before modifiers
-- strength of 4: 2500 durability before modifiers
-- strength of 5: 3500 durability before modifiers
-- strength of 6: 4500 durability before modifiers
-- strength of 7: 6000 durability before modifiers
-- strength of 8: 8000 durability before modifiers
-- strength of 9: 10000 durability before modifiers
-- strength of 10: 12500 durability before modifiers

tools.material.wood={
	handle = true, --if it can be a handle!
	rod = true, --if it can be a rod!
	head = true, --if it can be a head!
	durability = 1000, --the main durability before it is modified. only applies when used as head!
	mininglevel = 1, --main damage value (aka mining level) before modifiers!
	miningspeed = 1, --main speed value before modifiers!
	strength = 1, 	--mining level*0.4 (reduction)(when used as head)
					--durability*0.4 (reduction)(when used as rod)
	hold = 1, --mining speed*0.4 (reduction)
	flexibility = 2, --both mining level and speed *0.6 (reduction)
	-- if a modifier isnt here, its of no use for this material!
	--so when using an all wooden tool. there are the stats:
	-- damage value(mining level): 1*0.4*0.6 = 0.24
	-- durability: 1000*0.4 = 400
	-- mining speed: 1*0.4*0.6 = 0.24
}
tools.material.stone={
	handle = true, --if it can be a handle!
	rod = true, --if it can be a rod!
	head = true, --if it can be a head!
	durability = 4500, 	--the main durability before it is modified. only applies when used as head!
						--durability*1.2 (increase)(when used as rod)						
	mininglevel = 2, --main damage value (aka mining level) before modifiers!
	miningspeed = 3, --main speed value before modifiers!
	strength = 6, --mining level*1.2 (increase)
	hold = 1, --mining speed*0.4 (reduction)
	flexibility = 0, --both mining level and speed *0.2 (reduction) 
	-- if a modifier isnt here, its of no use for this material!
	--so when using an all stone tool. there are the stats:
	-- damage value(mining level): 2*1.2*0.2 = 0.48
	-- durability: 4500*1.2 = 5400
	-- mining speed: 3*0.4*0.2 = 0.24
}
-- STone head with wooden rod and handle:
	-- damage value(mining level): 2*0.6*1.2 = 1.44
	-- durability: 4500*0.4 = 1800
	-- mining speed: 3*0.4*0.6 = 0.72

--[[function tool(handle, rod, head)
	local sep = "-"
	local name = handle..sep..rod..sep..head..sep.."dytech"..sep.."axe"
	data:extend({
	  {
        type = "mining-tool",
        name = name,
        icon = "__dytech-tools__/graphics/icons/"..name..".png",
        flags = {"goes-to-main-inventory"},
        action =
        {
		  type="direct",
		  action_delivery =
		  {
		    type = "instant",
			target_effects =
			{
			  type = "damage",
			  damage = { amount = database.toolitems.handles[handle]+database.toolitems.rods[rod], type = "physical"}
			}
		  }
		},
        durability = database.toolitems.handles[handle]+database.toolitems.rods[rod],
        subgroup = "tool",
        order = "a[mining]-dytech".."["..name.."]",
        speed = database.toolitems.heads[head],
        stack_size = 20
      }
    })
end]]--
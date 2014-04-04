require "defines"
require "story"

gt = game.gettext
game.oninit(function()
  local character = game.player.character
  if character then character.destroy() end
  game.player.setcontroller{type=defines.controllers.god}
end)

-- The story contents
storytable =
{{
  {
    action = function() game.showmessagedialog(gt("msg-introduction")) end 
  },
  {
    action = function() game.showmessagedialog(gt("msg-ask-chest")) end
  },
  {
    action =
    function()
      game.player.gui.top.add{type = "button", name="button_use_chest", caption=gt("button-use-chest")}
      game.player.gui.top.add{type = "button", name="button_no_chest", caption=gt("button-no-chest")}
    end
  },
  {
    condition =
    function(event)
      if event.name == defines.events.onguiclick then
        if event.element.name == "button_use_chest" then
          buildstartingchest()
        end
        return true
      end
      return false
    end,
    action = function()
      game.player.gui.top.button_use_chest.destroy()
      game.player.gui.top.button_no_chest.destroy()
      game.showmessagedialog(gt("msg-ask-technologies"))
    end
  },
  {
    action =
    function()
      game.player.gui.top.add{type = "button", name="button_technologies_researched", caption=gt("button-technologies-researched")}
      game.player.gui.top.add{type = "button", name="button_technologies_normal", caption=gt("button-technologies-normal")}
    end
  },
  {
    condition =
    function(event)
		if event.name == defines.events.onguiclick then
			if event.element.name == "button_technologies_researched" then
				game.player.force.researchalltechnologies()
				game.player.force.recipes["repair-pack"].enabled = true
				game.player.force.recipes["repair-pack-2"].enabled = true
				game.player.force.recipes["iron-gear-wheel"].enabled = true
				game.player.force.recipes["steel-gear-wheel"].enabled = true
				game.player.force.recipes["iron-axe"].enabled = true
				game.player.force.recipes["steel-axe"].enabled = true
				game.player.force.recipes["steel-axe2"].enabled = true
				game.player.force.recipes["steel-axe3"].enabled = true
				game.player.force.recipes["basic-mining-drill-sand"].enabled = true
				game.player.force.recipes["sandwall"].enabled = true
				game.player.force.recipes["basic-mining-drill"].enabled = true
				game.player.force.recipes["basic-mining-drill-mk2"].enabled = true
				game.player.force.recipes["basic-mining-drill-mk3"].enabled = true
				game.player.force.recipes["basic-mining-drill-mk4"].enabled = true
				game.player.force.recipes["basic-mining-drill-mk5"].enabled = true
				game.player.force.recipes["basic-mining-drill-mk6"].enabled = true
				game.player.force.recipes["gun-turret"].enabled = true
				game.player.force.recipes["laser-turret"].enabled = true
				game.player.force.recipes["laser-turret-2"].enabled = true
				game.player.force.recipes["laser-turret-3"].enabled = true
				game.player.force.recipes["laser-turret-4"].enabled = true
				game.player.force.recipes["laser-turret-5"].enabled = true
				game.player.force.recipes["laser-turret-6"].enabled = true
				game.player.force.recipes["laser-turret-7"].enabled = true
				game.player.force.recipes["laser-turret-8"].enabled = true
				game.player.force.recipes["laser-turret-9"].enabled = true
				game.player.force.recipes["laser-turret-sniper-1"].enabled = true
				game.player.force.recipes["laser-turret-sniper-2"].enabled = true
				game.player.force.recipes["laser-turret-sniper-3"].enabled = true
				game.player.force.recipes["science-pack-1"].enabled = true
				game.player.force.recipes["science-pack-2"].enabled = true
				game.player.force.recipes["science-pack-3"].enabled = true
				game.player.force.recipes["alien-science-pack"].enabled = true
				game.player.force.recipes["geothermal-extractor"].enabled = true
				game.player.force.recipes["mold-gear"].enabled = true
				game.player.force.recipes["metallurgy-machine-gear"].enabled = true
				game.player.force.recipes["mold-wire"].enabled = true
				game.player.force.recipes["metallurgy-machine-wire"].enabled = true
				game.player.force.recipes["mold-circuit"].enabled = true
				game.player.force.recipes["metallurgy-machine-circuit"].enabled = true
				game.player.force.recipes["mold-tool"].enabled = true
				game.player.force.recipes["metallurgy-machine-tool"].enabled = true
				game.player.force.recipes["mold-ammo-basic"].enabled = true
				game.player.force.recipes["mold-ammo-advanced"].enabled = true
				game.player.force.recipes["metallurgy-machine-ammo-basic"].enabled = true
				game.player.force.recipes["metallurgy-machine-ammo-advanced"].enabled = true
				game.player.force.recipes["metallurgy-copper-smelt"].enabled = true
				game.player.force.recipes["metallurgy-copper-plate"].enabled = true
				game.player.force.recipes["blast-furnace"].enabled = true
				game.player.force.recipes["forge"].enabled = true
				game.player.force.recipes["lava-handler"].enabled = true
				game.player.force.recipes["metallurgy-liquid-air"].enabled = true
				game.player.force.recipes["air-intake"].enabled = true
				game.player.force.recipes["lava-800"].enabled = true
				game.player.force.recipes["lava-1000"].enabled = true
				game.player.force.recipes["lava-1200"].enabled = true
				game.player.force.recipes["metallurgy-iron-smelt"].enabled = true
				game.player.force.recipes["metallurgy-iron-plate"].enabled = true
				game.player.force.recipes["lava-1400"].enabled = true
				game.player.force.recipes["lava-1600"].enabled = true
				game.player.force.recipes["metallurgy-steel-plate"].enabled = true
				game.player.force.recipes["centrifuge"].enabled = true
				game.player.force.recipes["coal-splitting"].enabled = true
				game.player.force.recipes["metallurgy-iron-carbonated"].enabled = true
				game.player.force.recipes["lava-1800"].enabled = true
				game.player.force.recipes["lava-2000"].enabled = true
				game.player.force.recipes["mold-crafting-ammo-advanced-1"].enabled = true
				game.player.force.recipes["mold-crafting-ammo-advanced-2"].enabled = true
				game.player.force.recipes["mold-crafting-ammo-advanced-3"].enabled = true
				game.player.force.recipes["mold-crafting-circuit-1"].enabled = true
				game.player.force.recipes["mold-crafting-circuit-2"].enabled = true
				game.player.force.recipes["mold-crafting-gear-1"].enabled = true
				game.player.force.recipes["mold-crafting-gear-2"].enabled = true
				game.player.force.recipes["mold-crafting-tool-1"].enabled = true
				game.player.force.recipes["mold-crafting-tool-2"].enabled = true
				game.player.force.recipes["mold-crafting-tool-3"].enabled = true
				game.player.force.recipes["mold-crafting-wire-1"].enabled = true
				game.player.force.recipes["mold-crafting-wire-2"].enabled = true
				game.player.force.recipes["mold-crafting-wire-3"].enabled = true
				game.player.force.recipes["metallurgy-tin-plate"].enabled = true
				game.player.force.recipes["metallurgy-tin-smelt"].enabled = true
				game.player.force.recipes["metallurgy-zinc-plate"].enabled = true
				game.player.force.recipes["metallurgy-zinc-smelt"].enabled = true
				game.player.force.recipes["metallurgy-lead-plate"].enabled = true
				game.player.force.recipes["metallurgy-lead-smelt"].enabled = true
				game.player.force.recipes["metallurgy-gold-plate"].enabled = true
				game.player.force.recipes["metallurgy-gold-smelt"].enabled = true
				game.player.force.recipes["metallurgy-silver-plate"].enabled = true
				game.player.force.recipes["metallurgy-silver-smelt"].enabled = true
				game.player.force.recipes["lava-2200"].enabled = true
				game.player.force.recipes["lava-2400"].enabled = true
				game.player.force.recipes["lava-2600"].enabled = true
				game.player.force.recipes["metallurgy-tungsten-plate"].enabled = true
				game.player.force.recipes["metallurgy-tungsten-smelt"].enabled = true
				game.player.force.recipes["lava-2800"].enabled = true
				game.player.force.recipes["lava-3000"].enabled = true
				game.player.force.recipes["lava-3200"].enabled = true
				game.player.force.recipes["lava-3400"].enabled = true
				game.player.force.recipes["lava-3600"].enabled = true
				game.player.force.recipes["lava-3800"].enabled = true
				game.player.force.recipes["lava-4000"].enabled = true
				game.player.force.recipes["metallurgy-copper-tungsten-alloy"].enabled = true
				game.player.force.recipes["metallurgy-copper-tungsten"].enabled = true
				game.player.force.recipes["mold-crafting-wire-4"].enabled = true
				game.player.force.recipes["metallurgy-bronze"].enabled = true
				game.player.force.recipes["metallurgy-bronze-alloy"].enabled = true
				game.player.force.recipes["metallurgy-brass"].enabled = true
				game.player.force.recipes["metallurgy-brass-alloy"].enabled = true
				game.player.force.recipes["metallurgy-electrum"].enabled = true
				game.player.force.recipes["metallurgy-electrum-alloy"].enabled = true
				game.player.force.recipes["metallurgy-gunmetal"].enabled = true
				game.player.force.recipes["metallurgy-gunmetal-alloy"].enabled = true
				game.player.force.recipes["pipe-mainline"].enabled = true
				game.player.force.recipes["pump-to-mainline"].enabled = true
				game.player.force.recipes["pump-from-mainline"].enabled = true
				game.player.force.recipes["pump-inline-mainline"].enabled = true
				game.player.force.recipes["brass-gear-wheel"].enabled = true
				game.player.force.recipes["mold-crafting-gear-3"].enabled = true
				game.player.force.recipes["tungsten-gear-wheel"].enabled = true
				game.player.force.recipes["mold-crafting-gear-4"].enabled = true
				game.player.force.recipes["copper-tungsten-gear-wheel"].enabled = true
				game.player.force.recipes["mold-crafting-gear-5"].enabled = true
			end
        return true
		end
    return false
    end,
    action = function()
      game.player.gui.top.button_technologies_researched.destroy()
      game.player.gui.top.button_technologies_normal.destroy()
      action = function() game.showmessagedialog(gt("msg-start-play")) end
    end
  },
  -- start the game
  {
    action =
    function()
      game.onevent(defines.events, nil)
    end
  },
  {
    condition = function() return false end,
    action = function() end
  }
}}

mainstory = story.Story:new(storytable)

game.onsave(function()
  glob.storydata = mainstory:export()
end)

game.onload(function()
  mainstory:import(glob.storydata)
end)

game.onevent(defines.events, function(event)
  mainstory:update(event, "")
end)

function buildstartingchest()
  local chestposition = game.findnoncollidingposition("steel-chest", game.player.position, 0, 0.1)
  local chest = game.createentity{name="steel-chest", position=chestposition}
  chest.insert({name="wood", count="64"})
  chest.insert({name="coal", count="128"})
  chest.insert({name="stone", count="128"})
  chest.insert({name="iron-plate", count="512"})
  chest.insert({name="copper-plate", count="512"})
  chest.insert({name="steel-plate", count="128"})
  chest.insert({name="iron-gear-wheel", count="256"})
  chest.insert({name="electronic-circuit", count="256"})
  chest.insert({name="advanced-circuit", count="256"})
  chest.insert({name="offshore-pump", count="8"})
  chest.insert({name="pipe", count="16"})
  chest.insert({name="boiler", count="16"})
  chest.insert({name="basic-mining-drill", count="64"})
  chest.insert({name="steam-engine", count="8"})
  chest.insert({name="stone-furnace", count="64"})
  chest.insert({name="basic-transport-belt", count="128"})
  chest.insert({name="fast-transport-belt", count="64"})
  chest.insert({name="express-transport-belt", count="64"})
  chest.insert({name="basic-inserter", count="64"})
  chest.insert({name="fast-inserter", count="64"})
  chest.insert({name="long-handed-inserter", count="64"})
  chest.insert({name="smart-inserter", count="64"})
  chest.insert({name="small-electric-pole", count="32"})
  chest.insert({name="assembling-machine-1", count="32"})
  chest.insert({name="assembling-machine-2", count="32"})
  chest.insert({name="straight-rail", count="192"})
  chest.insert({name="curved-rail", count="64"})
  chest.insert({name="train-stop", count="8"})
  chest.insert({name="rail-signal", count="32"})
  chest.insert({name="diesel-locomotive", count="8"})
  chest.insert({name="cargo-wagon", count="16"})
end

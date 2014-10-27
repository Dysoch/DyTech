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
				if remote.interfaces["DyTech-Core"] then
					if remote.call("DyTech-Core", "detectModule", "core")==true then
						game.player.force.recipes["science-pack-1-dytech-1"].enabled = true
						game.player.force.recipes["science-pack-1-dytech-2"].enabled = true
						game.player.force.recipes["basic-inserter-dytech-1"].enabled = true
						game.player.force.recipes["basic-inserter-dytech-2"].enabled = true
						game.player.force.recipes["basic-transport-belt-dytech-1"].enabled = true
						game.player.force.recipes["basic-transport-belt-dytech-2"].enabled = true
						game.player.force.recipes["copper-cable-dytech-1"].enabled = true
						game.player.force.recipes["copper-cable-dytech-2"].enabled = true
					end
					if remote.call("DyTech-Core", "detectModule", "automation")==true then
						game.player.force.recipes["steel-furnace-mk2"].enabled = true
						game.player.force.recipes["steel-furnace-mk3"].enabled = true
						game.player.force.recipes["steel-furnace-mk4"].enabled = true
						game.player.force.recipes["steel-furnace-mk5"].enabled = true
						game.player.force.recipes["electric-furnace-mk2"].enabled = true
						game.player.force.recipes["electric-furnace-mk3"].enabled = true
						game.player.force.recipes["electric-furnace-mk4"].enabled = true
						game.player.force.recipes["electric-furnace-mk5"].enabled = true
						game.player.force.recipes["frame1"].enabled = true
						game.player.force.recipes["frame2"].enabled = true
						game.player.force.recipes["frame3"].enabled = true
						game.player.force.recipes["frame4"].enabled = true
						game.player.force.recipes["blade1"].enabled = true
						game.player.force.recipes["blade2"].enabled = true
						game.player.force.recipes["blade3"].enabled = true
						game.player.force.recipes["rotor1"].enabled = true
						game.player.force.recipes["rotor2"].enabled = true
						game.player.force.recipes["rotor3"].enabled = true
						game.player.force.recipes["rotor4"].enabled = true
						game.player.force.recipes["item-exit1"].enabled = true
						game.player.force.recipes["item-exit2"].enabled = true
						game.player.force.recipes["item-exit3"].enabled = true
						game.player.force.recipes["item-exit4"].enabled = true
						game.player.force.recipes["radar-mk2"].enabled = true
						game.player.force.recipes["radar-mk3"].enabled = true
						game.player.force.recipes["radar-mk4"].enabled = true
						game.player.force.recipes["radar-mk5"].enabled = true
						game.player.force.recipes["basic-mining-drill-mk2"].enabled = true
						game.player.force.recipes["basic-mining-drill-mk3"].enabled = true
						game.player.force.recipes["basic-mining-drill-mk4"].enabled = true
						game.player.force.recipes["basic-mining-drill-mk5"].enabled = true
						game.player.force.recipes["basic-mining-drill-mk6"].enabled = true
						game.player.force.recipes["assembling-machine-4"].enabled = true
						game.player.force.recipes["assembling-machine-5"].enabled = true
						game.player.force.recipes["assembling-machine-6"].enabled = true
						game.player.force.recipes["assembling-machine-7"].enabled = true
					end
					if remote.call("DyTech-Core", "detectModule", "metallurgy")==true then
						game.player.force.recipes["centrifuge-mk2"].enabled = true
						game.player.force.recipes["centrifuge-mk3"].enabled = true
						game.player.force.recipes["centrifuge-mk4"].enabled = true
						game.player.force.recipes["centrifuge-mk5"].enabled = true
					end
				end
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
  local chestposition = game.findnoncollidingposition("steel-chest", 		game.player.position, 0, 0.1)
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

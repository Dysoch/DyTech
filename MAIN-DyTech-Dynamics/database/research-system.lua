module("RSDatabase")

--  [""]={},

--[[ Explanation ]]--
-- This is the database that is needed for both the Tech removal code and the system itself.
-- this happens tiered ingame. Please check Research-Events.txt for more info


ItemUnlock =
{
["iron-gear-wheel"]={Tech="automation", Points=2, Hour=0, Minute=10, Event=1, Tier=1},
["long-handed-inserter"]={Tech="automation", Points=3, Hour=0, Minute=15, Event=2, Tier=1},
["assembling-machine-1"]={Tech="automation", Points=5, Hour=0, Minute=15, Event=3, Tier=1},
["steel-plate"]={Tech="steel-processing", Points=7, Hour=0, Minute=20, Event=4, Tier=1},
["steel-chest"]={Tech="steel-processing", Points=7, Hour=0, Minute=20, Event=5, Tier=1},
["steel-axe"]={Tech="steel-processing", Points=6, Hour=0, Minute=20, Event=6, Tier=1},
["submachine-gun"]={Tech="military", Points=4, Hour=0, Minute=10, Event=7, Tier=1},
["shotgun"]={Tech="military", Points=4, Hour=0, Minute=10, Event=8, Tier=1},
["shotgun-shell"]={Tech="military", Points=2, Hour=0, Minute=10, Event=9, Tier=1},
["piercing-bullet-magazine"]={Tech="military-2", Points=6, Hour=0, Minute=30, Event=10, Tier=2},
["basic-grenade"]={Tech="military-2", Points=6, Hour=0, Minute=30, Event=11, Tier=2},
["car"]={Tech="automobilism", Points=250, Hour=2, Minute=30, Event=12, Tier=2},
["tank"]={Tech="tanks", Points=50, Hour=3, Minute=30, Event=13, Tier=3},
["cannon-shell"]={Tech="tanks", Points=10, Hour=3, Minute=30, Event=14, Tier=3},
["solar-panel"]={Tech="solar-energy", Points=200, Hour=1, Minute=30, Event=15, Tier=2},
["gun-turret"]={Tech="turrets", Points=10, Hour=0, Minute=5, Event=16, Tier=1},
["stone-wall"]={Tech="stone-walls", Points=10, Hour=0, Minute=30, Event=17, Tier=1},
["gate"]={Tech="gates", Points=200, Hour=1, Minute=0, Event=18, Tier=1},
["alien-science-pack"]={Tech="alien-technology", Points=500, Hour=5, Minute=0, Event=19, Tier=2},
["steel-furnace"]={Tech="advanced-material-processing", Points=75, Hour=1, Minute=0, Event=20, Tier=2},
["electric-furnace"]={Tech="advanced-material-processing-2", Points=175, Hour=2, Minute=0, Event=21, Tier=2},
["small-pump"]={Tech="fluid-handling", Points=10, Hour=2, Minute=30, Event=22, Tier=2},
["pumpjack"]={Tech="oil-processing", Points=40, Hour=2, Minute=0, Event=23, Tier=2},
["oil-refinery"]={Tech="oil-processing", Points=40, Hour=2, Minute=0, Event=24, Tier=2},
["chemical-plant"]={Tech="oil-processing", Points=40, Hour=2, Minute=0, Event=25, Tier=2},
}
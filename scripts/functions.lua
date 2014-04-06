module("fs", package.seeall)
require("util")

function MeteorSpawn(meteor)
	local position={}
  	position.x=math.random(math.abs(glob.landing.west)+glob.landing.east)
    position.y=math.random(math.abs(glob.landing.south)+glob.landing.north)
    if position.x > glob.landing.east then position.x=glob.landing.east-position.x end
    if position.y > glob.landing.north then position.y=glob.landing.north-position.y end
	local name = meteor[math.random(#meteor)] -- first index is explosion
	game.createentity{name=name, position=position, force=game.forces.player} -- spawn meteor
  game.createentity{name=meteor.explosion, position=position, force=game.forces.neutral} -- spawn explosion
  for _, nearbyentity in ipairs(game.findentities{getboundingbox(position, meteor.area)}) do
    if nearbyentity.health then
      if nearbyentity.name == name then --this IS necessary, even with health=500000, the damage at ground zero is practically infinite
      else nearbyentity.damage((50*meteor.area/util.distance(position, nearbyentity.position)), game.forces.enemy)
      end
  --else nearbyentity.destroy() -- optional
    end
  end
end

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius} end

function CollectByPosition(name, radius, ext)
	local realname=name.."-collector"
	if ext then realname=realname.."-1" end
	for i, value in pairs(glob[name]) do
    local foundcollector=game.findentitiesfiltered{name=realname, area={getboundingbox(value.position, 1)}}
		if not foundcollector[1] then
		table.remove(glob[name], i)
		break
		else
			for _, item in pairs(game.findentitiesfiltered{name="item-on-ground", area={getboundingbox(value.position, radius)}}) do
				if item.stack.name==name and foundcollector[1].caninsert{name=name, count=1} then
					foundcollector[1].insert{name=name, count=1}
					game.createentity{name="item-pickup-dytech", position={value.position.x, value.position.y+0.5}}
					item.destroy()
				break
				end
			end
		end
	end
end

function dmgMsg(entity) -- Messages for the Damage Events!
	if glob.message then 
		if entity.valid then
			game.player.print(game.getlocalisedentityname(entity.name).." "..game.gettext("msg-damaged"))
		else
			game.player.print(game.gettext("msg-destroyed"))
		end
	elseif glob.message==nil then
		glob.message = true
	end
end

function CounterPrinter()
	game.player.print("Here are all your counters with their current status!")
	game.player.print("Gear:".." "..tostring(glob.counter.gear))
	game.player.print("Resource:".." "..tostring(glob.counter.resource))
	game.player.print("Mining:".." "..tostring(glob.counter.mining))
	game.player.print("Robot:".." "..tostring(glob.counter.robot))
	game.player.print("Machine:".." "..tostring(glob.counter.machine))
	game.player.print("Gun:".." "..tostring(glob.counter.gun))
	game.player.print("Ammo:".." "..tostring(glob.counter.ammo))
	game.player.print("Capsule:".." "..tostring(glob.counter.capsule))
	game.player.print("Tech:".." "..tostring(glob.counter.tech))
	game.player.print("Plates:".." "..tostring(glob.counter.plates))
	game.player.print("Inserter:".." "..tostring(glob.counter.inserter))
	game.player.print("Energy:".." "..tostring(glob.counter.energy))
	game.player.print("Chest:".." "..tostring(glob.counter.chest))
	game.player.print("Armor:".." "..tostring(glob.counter.armor))
	game.player.print("Gems:".." "..tostring(glob.counter.gems))
	game.player.print("Belt:".." "..tostring(glob.counter.belt))
	game.player.print("Turret:".." "..tostring(glob.counter.turret))
	game.player.print("Alien:".." "..tostring(glob.counter.alien))
	game.player.print("Science:".." "..tostring(glob.counter.science))
	game.player.print("Wall:".." "..tostring(glob.counter.wall))
	game.player.print("Modules:".." "..tostring(glob.counter.modules))
	game.player.print("All Counters Combined:".." "..tostring(glob.counter.dytech))
end

function CounterPrinter2()
	game.player.print("Here are all your counters of second tier with their current status!")
	game.player.print("Item Mined:".." "..tostring(glob.counter2.mine))
	game.player.print("Entities Build:".." "..tostring(glob.counter2.build))
	game.player.print("Sectors Scanned:".." "..tostring(glob.counter2.sectorscanned))
	game.player.print("Entities Died:".." "..tostring(glob.counter2.died))
	game.player.print("Items Picked Up:".." "..tostring(glob.counter2.pickup))
	game.player.print("Chunks Loaded:".." "..tostring(glob.counter2.chunks))
	game.player.print("All Counters Combined:".." "..tostring(glob.counter2.dytech))
end

function OnLoad()
	if not glob.counter then glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0} end
	if not glob.counter.dytech then glob.counter.dytech=0 end
	if not glob.counter.gear then glob.counter.gear=0 end
	if not glob.counter.resource then glob.counter.resource=0 end
	if not glob.counter.mining then glob.counter.mining=0 end
	if not glob.counter.robot then glob.counter.robot=0 end
	if not glob.counter.ammo then glob.counter.ammo=0 end
	if not glob.counter.gun then glob.counter.gun=0 end
	if not glob.counter.machine then glob.counter.machine=0 end
	if not glob.counter.capsule then glob.counter.capsule=0 end
	if not glob.counter.tech then glob.counter.tech=0 end
	if not glob.counter.plates then glob.counter.plates=0 end
	if not glob.counter.inserter then glob.counter.inserter=0 end
	if not glob.counter.energy then glob.counter.energy=0 end
	if not glob.counter.chest then glob.counter.chest=0 end
	if not glob.counter.armor then glob.counter.armor=0 end
	if not glob.counter.gems then glob.counter.gems=0 end
	if not glob.counter.belt then glob.counter.belt=0 end
	if not glob.counter.turret then glob.counter.turret=0 end
	if not glob.counter.alien then glob.counter.alien=0 end
	if not glob.counter.science then glob.counter.science=0 end
	if not glob.counter.wall then glob.counter.wall=0 end
	if not glob.counter.modules then glob.counter.modules=0 end
	if not glob.unlock then glob.unlock={umd=0} end
	if not glob.unlock.umd then glob.unlock.umd=0 end
	if not glob.craftfoundation then glob.craftfoundation={wood=0, stone=0, iron=0, steel=0} end
	if not glob.reward then glob.reward={axe1=false} end
	if not glob.reward.axe1 then glob.reward.axe1=false end
	if not glob.time then glob.time=0 end
	if not glob.combat then glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0} end
	if not glob.combat.dytech then glob.combat.dytech=0 end
	if not glob.combat.small then glob.combat.small=0 end
	if not glob.combat.medium then glob.combat.medium=0 end
	if not glob.combat.big then glob.combat.big=0 end
	if not glob.combat.berserker then glob.combat.berserker=0 end
	if not glob.combat.elder then glob.combat.elder=0 end
	if not glob.combat.king then glob.combat.king=0 end
	if not glob.combat.queen then glob.combat.queen=0 end
	if not glob.combat.dog then glob.combat.dog=0 end
	if not glob.combat.bird then glob.combat.bird=0 end
	if not glob.warning then glob.warning=false end
	if not glob.radars then glob.radars={} end
	if not glob.landing then glob.landing={extra=math.random(800,1200)} end
	if not glob.landing.north then glob.landing.north=glob.landing.extra end
	if not glob.landing.south then glob.landing.south=0-glob.landing.extra end
	if not glob.landing.east then glob.landing.east=glob.landing.extra end
	if not glob.landing.west then glob.landing.west=0-glob.landing.extra end
	if not glob.counter2 then glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0} end
	if not glob.counter2.dytech then glob.counter2.dytech=0 end
	if not glob.counter2.mine then glob.counter2.mine=0 end
	if not glob.counter2.build then glob.counter2.build=0 end
	if not glob.counter2.sectorscanned then glob.counter2.sectorscanned=0 end
	if not glob.counter2.died then glob.counter2.died=0 end
	if not glob.counter2.pickup then glob.counter2.pickup=0 end
	if not glob.counter2.chunks then glob.counter2.chunks=0 end
	if not glob.meteor then glob.meteor={small=0, medium=0, large=0, comet=0, asteroid=0, dytech=0} end
	if not glob.meteor.small then glob.meteor.small=0 end
	if not glob.meteor.medium then glob.meteor.medium=0 end
	if not glob.meteor.large then glob.meteor.large=0 end
	if not glob.meteor.comet then glob.meteor.comet=0 end
	if not glob.meteor.asteroid then glob.meteor.asteroid=0 end
	if not glob.meteor.dytech then glob.meteor.dytech=0 end
end

function OnInit()
	game.player.print(game.gettext("msg-welcome-1"))
	game.player.print(game.gettext("msg-welcome-2"))
	game.player.insert{name="wood",count=4}
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0, sectorscanned=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.unlock={umd=0}
glob.craftfoundation={wood=0, stone=0, iron=0, steel=0}
glob.reward={axe1=false}
glob.time=0
glob.message=true
glob.gem={}
glob.gemcount=0
glob.stone={}
glob.stonecount=0
glob.sand={}
glob.sandcount=0
glob.coal={}
glob.coalcount=0
glob.warning=false
glob.radars={}
glob.landing={extra=math.random(800,1200)}
glob.landing.north=glob.landing.extra
glob.landing.south=0-glob.landing.extra
glob.landing.east=glob.landing.extra
glob.landing.west=0-glob.landing.extra
glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0}
glob.meteor={small=0, medium=0, large=0, comet=0, asteroid=0, dytech=0}
end

function SpotlightOn()
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

function SpotlightOff()
game.player.force.recipes["repair-pack"].enabled = false
game.player.force.recipes["repair-pack-2"].enabled = false
game.player.force.recipes["iron-gear-wheel"].enabled = false
game.player.force.recipes["steel-gear-wheel"].enabled = false
game.player.force.recipes["iron-axe"].enabled = false
game.player.force.recipes["steel-axe"].enabled = false
game.player.force.recipes["steel-axe2"].enabled = false
game.player.force.recipes["steel-axe3"].enabled = false
game.player.force.recipes["basic-mining-drill-sand"].enabled = false
game.player.force.recipes["sandwall"].enabled = false
game.player.force.recipes["basic-mining-drill"].enabled = false
game.player.force.recipes["basic-mining-drill-mk2"].enabled = false
game.player.force.recipes["basic-mining-drill-mk3"].enabled = false
game.player.force.recipes["basic-mining-drill-mk4"].enabled = false
game.player.force.recipes["basic-mining-drill-mk5"].enabled = false
game.player.force.recipes["basic-mining-drill-mk6"].enabled = false
game.player.force.recipes["gun-turret"].enabled = false
game.player.force.recipes["laser-turret"].enabled = false
game.player.force.recipes["laser-turret-2"].enabled = false
game.player.force.recipes["laser-turret-3"].enabled = false
game.player.force.recipes["laser-turret-4"].enabled = false
game.player.force.recipes["laser-turret-5"].enabled = false
game.player.force.recipes["laser-turret-6"].enabled = false
game.player.force.recipes["laser-turret-7"].enabled = false
game.player.force.recipes["laser-turret-8"].enabled = false
game.player.force.recipes["laser-turret-9"].enabled = false
game.player.force.recipes["laser-turret-sniper-1"].enabled = false
game.player.force.recipes["laser-turret-sniper-2"].enabled = false
game.player.force.recipes["laser-turret-sniper-3"].enabled = false
game.player.force.recipes["science-pack-1"].enabled = false
game.player.force.recipes["science-pack-2"].enabled = false
game.player.force.recipes["science-pack-3"].enabled = false
game.player.force.recipes["alien-science-pack"].enabled = false
game.player.force.recipes["geothermal-extractor"].enabled = false
game.player.force.recipes["mold-gear"].enabled = false
game.player.force.recipes["metallurgy-machine-gear"].enabled = false
game.player.force.recipes["mold-wire"].enabled = false
game.player.force.recipes["metallurgy-machine-wire"].enabled = false
game.player.force.recipes["mold-circuit"].enabled = false
game.player.force.recipes["metallurgy-machine-circuit"].enabled = false
game.player.force.recipes["mold-tool"].enabled = false
game.player.force.recipes["metallurgy-machine-tool"].enabled = false
game.player.force.recipes["mold-ammo-basic"].enabled = false
game.player.force.recipes["mold-ammo-advanced"].enabled = false
game.player.force.recipes["metallurgy-machine-ammo-basic"].enabled = false
game.player.force.recipes["metallurgy-machine-ammo-advanced"].enabled = false
game.player.force.recipes["metallurgy-copper-smelt"].enabled = false
game.player.force.recipes["metallurgy-copper-plate"].enabled = false
game.player.force.recipes["blast-furnace"].enabled = false
game.player.force.recipes["forge"].enabled = false
game.player.force.recipes["lava-handler"].enabled = false
game.player.force.recipes["metallurgy-liquid-air"].enabled = false
game.player.force.recipes["air-intake"].enabled = false
game.player.force.recipes["lava-800"].enabled = false
game.player.force.recipes["lava-1000"].enabled = false
game.player.force.recipes["lava-1200"].enabled = false
game.player.force.recipes["metallurgy-iron-smelt"].enabled = false
game.player.force.recipes["metallurgy-iron-plate"].enabled = false
game.player.force.recipes["lava-1400"].enabled = false
game.player.force.recipes["lava-1600"].enabled = false
game.player.force.recipes["metallurgy-steel-plate"].enabled = false
game.player.force.recipes["centrifuge"].enabled = false
game.player.force.recipes["coal-splitting"].enabled = false
game.player.force.recipes["metallurgy-iron-carbonated"].enabled = false
game.player.force.recipes["lava-1800"].enabled = false
game.player.force.recipes["lava-2000"].enabled = false
game.player.force.recipes["mold-crafting-ammo-advanced-1"].enabled = false
game.player.force.recipes["mold-crafting-ammo-advanced-2"].enabled = false
game.player.force.recipes["mold-crafting-ammo-advanced-3"].enabled = false
game.player.force.recipes["mold-crafting-circuit-1"].enabled = false
game.player.force.recipes["mold-crafting-circuit-2"].enabled = false
game.player.force.recipes["mold-crafting-gear-1"].enabled = false
game.player.force.recipes["mold-crafting-gear-2"].enabled = false
game.player.force.recipes["mold-crafting-tool-1"].enabled = false
game.player.force.recipes["mold-crafting-tool-2"].enabled = false
game.player.force.recipes["mold-crafting-tool-3"].enabled = false
game.player.force.recipes["mold-crafting-wire-1"].enabled = false
game.player.force.recipes["mold-crafting-wire-2"].enabled = false
game.player.force.recipes["mold-crafting-wire-3"].enabled = false
game.player.force.recipes["metallurgy-tin-plate"].enabled = false
game.player.force.recipes["metallurgy-tin-smelt"].enabled = false
game.player.force.recipes["metallurgy-zinc-plate"].enabled = false
game.player.force.recipes["metallurgy-zinc-smelt"].enabled = false
game.player.force.recipes["metallurgy-lead-plate"].enabled = false
game.player.force.recipes["metallurgy-lead-smelt"].enabled = false
game.player.force.recipes["metallurgy-gold-plate"].enabled = false
game.player.force.recipes["metallurgy-gold-smelt"].enabled = false
game.player.force.recipes["metallurgy-silver-plate"].enabled = false
game.player.force.recipes["metallurgy-silver-smelt"].enabled = false
game.player.force.recipes["lava-2200"].enabled = false
game.player.force.recipes["lava-2400"].enabled = false
game.player.force.recipes["lava-2600"].enabled = false
game.player.force.recipes["metallurgy-tungsten-plate"].enabled = false
game.player.force.recipes["metallurgy-tungsten-smelt"].enabled = false
game.player.force.recipes["lava-2800"].enabled = false
game.player.force.recipes["lava-3000"].enabled = false
game.player.force.recipes["lava-3200"].enabled = false
game.player.force.recipes["lava-3400"].enabled = false
game.player.force.recipes["lava-3600"].enabled = false
game.player.force.recipes["lava-3800"].enabled = false
game.player.force.recipes["lava-4000"].enabled = false
game.player.force.recipes["metallurgy-copper-tungsten-alloy"].enabled = false
game.player.force.recipes["metallurgy-copper-tungsten"].enabled = false
game.player.force.recipes["mold-crafting-wire-4"].enabled = false
game.player.force.recipes["metallurgy-bronze"].enabled = false
game.player.force.recipes["metallurgy-bronze-alloy"].enabled = false
game.player.force.recipes["metallurgy-brass"].enabled = false
game.player.force.recipes["metallurgy-brass-alloy"].enabled = false
game.player.force.recipes["metallurgy-electrum"].enabled = false
game.player.force.recipes["metallurgy-electrum-alloy"].enabled = false
game.player.force.recipes["metallurgy-gunmetal"].enabled = false
game.player.force.recipes["metallurgy-gunmetal-alloy"].enabled = false
game.player.force.recipes["pipe-mainline"].enabled = false
game.player.force.recipes["pump-to-mainline"].enabled = false
game.player.force.recipes["pump-from-mainline"].enabled = false
game.player.force.recipes["pump-inline-mainline"].enabled = false
game.player.force.recipes["brass-gear-wheel"].enabled = false
game.player.force.recipes["mold-crafting-gear-3"].enabled = false
game.player.force.recipes["tungsten-gear-wheel"].enabled = false
game.player.force.recipes["mold-crafting-gear-4"].enabled = false
game.player.force.recipes["copper-tungsten-gear-wheel"].enabled = false
game.player.force.recipes["mold-crafting-gear-5"].enabled = false
end
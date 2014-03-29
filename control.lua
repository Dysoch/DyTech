require "defines"
require "scripts/dynamic-system"
require "scripts/dynamic-system-database"
require "scripts/functions"

--game.player.print(serpent.block(glob.counter.dytech)) --debugger
	glob.specieOfTreeTable={"rubber"}
	
game.oninit(function()
	fs.OnInit(game, glob)
end)

game.onsave(function()

end)

game.onload(function()
	fs.OnLoad(glob)
end)

--[[F-mod Compatibility]]--
if remote.interfaces["F-mod"] then
  remote.call("F-mod", "addboiler", "boiler-mk2")
  remote.call("F-mod", "addboiler", "boiler-mk3")
  remote.call("F-mod", "addboiler", "boiler-mk4")
  remote.call("F-mod", "addboiler", "boiler-mk5")
  remote.call("F-mod", "addumdresource", "sand", 10)
  remote.call("F-mod", "addumdresource", "ruby-orex", 4)
  remote.call("F-mod", "addumdresource", "ruby-ore", 1)
  remote.call("F-mod", "addumdresource", "sapphire-orex", 4)
  remote.call("F-mod", "addumdresource", "sapphire-ore", 1)
  remote.call("F-mod", "addumdresource", "topaz-orex", 4)
  remote.call("F-mod", "addumdresource", "topaz-ore", 1)
  remote.call("F-mod", "addumdresource", "emerald-orex", 4)
  remote.call("F-mod", "addumdresource", "emerald-ore", 1)
  remote.call("F-mod", "addumdresource", "diamond-orex", 4)
  remote.call("F-mod", "addumdresource", "diamond-ore", 1)
end

--[[Dynamic System Counters increase]]--
game.onevent(defines.events.onplayercrafteditem, function(event)
	if dsd.craftitems[event.itemstack.name] then
		for counter, ingredients in pairs(dsd.craftitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
	if dsd.foundation[event.itemstack.name] then
		for counter, ingredients in pairs(dsd.foundation[event.itemstack.name]) do 
			glob.craftfoundation[counter]=glob.craftfoundation[counter]+(event.itemstack.count*ingredients)
		end
	end
end)

game.onevent(defines.events.onplayermineditem, function(event)
	if dsd.mineitems[event.itemstack.name] then
		for counter, ingredients in pairs(dsd.mineitems[event.itemstack.name]) do 
			glob.counter[counter]=glob.counter[counter]+(event.itemstack.count*ingredients)
		end
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	if dsd.kill[event.entity.name] and event.entity.force.name == "enemy" then
		for counter, ingredients in pairs(dsd.kill[event.entity.name]) do 
			glob.combat[counter]=glob.combat[counter] + ingredients
		end
	end
end)

--[[Main Events]]--
game.onevent(defines.events.ontick, function(event)
	if game.tick%60==0 then
		glob.time = glob.time + 1
	end
	if game.tick%60==1 then
		glob.counter.dytech=0
		for _, counter in pairs(glob.counter) do 
			if (counter~=glob.counter.dytech) then glob.counter.dytech=glob.counter.dytech+counter end
		end
	end
	if game.tick%60==1 then
		glob.combat.dytech=0
		for _, counter in pairs(glob.combat) do 
			if (counter~=glob.combat.dytech) then glob.combat.dytech=glob.combat.dytech+counter end
		end
	end
	--[[Dynamic System unlocks]]--
	ds.dynamicUnlocks(event, game, glob, math, random, ds.dsttime(), ds.eventtime) 
	--[[Rewards for the Dynamic System]]--
	ds.dynamicRewards(event, glob, game, math, random)
	--[[Checker for messages]]--
	if event.tick%216000==0 then
		game.player.print(game.gettext("msg-reminder1").." "..tostring(glob.message))
		game.player.print(game.gettext("msg-reminder2"))
		game.player.print(game.gettext("msg-welcome-2"))
	end
	--[[Event for generation the meteors]]--
	--[[if event.tick%18000==0 then
        local chance = math.random(100)
    local pos = 1 -- 'saved' state for checkMatch
    local chances = {
    66, 30, 100, 29, 28, 59, 69, 9, 6, 70, 18, 23, 76, 81, 57, 68, 22, 75, 52, 14, 73, 15, 37, 7, 39, 25, 96, 34, 80, 87, 21, 17, 92, 13, 63, 99, 47, 65, 38, 61, 84, 55, 1, 3, 89, 41, 83, 74, 5, 27, 53, 4, 49, 44, 67, 71, 91, 24, 46, 64, 48, 95, 98, 94, 35, 90, 79, 42, 58, 36, 16, 93, 8, 10, 31, 86, 62, 11, 20, 2, 50, 12, 60, 54, 97, 82, 45, 33, 56, 43, 51, 26, 72, 32, 19, 88, 78, 77, 40, 85}  -- table of randomized chances 
    local function checkMatch(percent)
      for i=pos, (pos+percent) do
        if chance == chances[i] then 
            return true 
        end
      end
      pos = pos + percent --failed to find a match, so update start position for next check 
      return false
    end
    if checkMatch(5) then 
      --generate asteroids (big, only 5% chance for it)
      
    elseif checkMatch(10) then
      --generate the big meteoride (10% chance)
      
    elseif checkMatch(20) then
      --generate the comet (20% chance)
      
    elseif checkMatch(20) then 
      --generate the medium meteoride (20% chance)
      
    else --generate the small meteoride (45% chance)
        
    end
	end--]]
	--[[Resin generator]]--
    if event.tick%3600==0 then
		for _,specie in pairs (glob.specieOfTreeTable) do
			if glob[specie.."trees"]~=nil then
				for i,d in pairs(glob[specie.."trees"]) do
					if d.entity.valid then
						if math.random(4)==1 and d.entity.name==specie.."-tree" then
							d.entity.insert({name=specie.."-tree-resin",count=math.random(4)})
						end
					else
                table.remove(glob[specie.."trees"],i)
					end
				end
			end
		end
	end
	--[[Stone Collector]]--
    if glob.stone~=nil and event.tick%12==0 then
		fs.CollectByPosition("stone", 1.5, false, glob, pairs, game)
		fs.CollectByPosition("stone", 1.5, true, glob, pairs, game)
	end
	--[[Sand Collector]]--
	if glob.sand~=nil and event.tick%12==0 then
		fs.CollectByPosition("sand", 1.5, false, glob, pairs, game)
		fs.CollectByPosition("sand", 1.5, true, glob, pairs, game)
	end
	--[[Coal Collector]]--
	if glob.coal~=nil and event.tick%12==0 then
		fs.CollectByPosition("coal", 1.5, false, glob, pairs, game)
		fs.CollectByPosition("coal", 1.5, true, glob, pairs, game)
	end
   --[[Gem Collector]]--
	if glob.gem~=nil and game.tick%60==0 then
		for i,_ in pairs(glob.gem) do
			local entities=game.findentities({{glob.gem[i].position.x-1,glob.gem[i].position.y-1},{glob.gem[i].position.x+1,glob.gem[i].position.y+1}})
			for x,_ in pairs(entities) do
				if entities[x].valid and entities[x].name=="gem-collector" then
					local gem=game.findentities({{glob.gem[i].position.x-25,glob.gem[i].position.y-25},{glob.gem[i].position.x+25,glob.gem[i].position.y+25}})
					for z,_ in pairs(gem) do 
						if gem[z].name=="item-on-ground" and gem[z].stack.name=="ruby-3" and entities[x].caninsert{name="ruby-3",count=1} then
							entities[x].insert{name="ruby-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						elseif gem[z].name=="item-on-ground" and gem[z].stack.name=="sapphire-3" and entities[x].caninsert{name="sapphire-3",count=1} then
							entities[x].insert{name="sapphire-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						elseif gem[z].name=="item-on-ground" and gem[z].stack.name=="emerald-3" and entities[x].caninsert{name="emerald-3",count=1} then
							entities[x].insert{name="emerald-3",count=1}
							 game.createentity({name="item-pickup-dytech",position={gem[z].position.x,gem[z].position.y+0.5}})
							gem[z].destroy()
						break
						end
					end
				end
			end
		end
	end
	--[[Spawner Changing]]--
	if glob.spawning~=nil and game.tick%60==1 then
		for i, spawning in pairs(glob.spawning) do
			if spawning.valid then
				local spawningposition = spawning.position
				spawning.die()
				game.createentity{name = "biter-spawner", position=spawningposition, force=game.forces.enemy}
			break
			elseif not spawning.valid then
        table.remove(glob.spawning, i)
			break
			end
		end
   end 
   
   --[[Power failure steam engines]]--
	if glob.damagingforce == nil then if glob.message then glob.damagingforce = game.forces.enemy else glob.damagingforce = game.player.force end end
	if glob.steamengine~=nil and game.tick%60==1 then
		for i, steamengine in pairs(glob.steamengine) do
			if steamengine.valid and steamengine.energy>1e-2 and steamengine.energy<2 then
				if math.random(1020/(9.667-steamengine.energy+1))==2 then
					steamengine.damage(5*(9.667-steamengine.energy), glob.damagingforce)
					fs.dmgMsg(steamengine, glob, game)
				break
				end
			elseif not steamengine.valid then
		table.remove(glob.steamengine, i)
			end
		end
	end
   --[[Power failure solar panels]]--
    if glob.solarpanel~=nil and game.tick%60==1 then
		for i, solarpanel in pairs(glob.solarpanel) do
			if solarpanel.entity.valid then
				if (game.tick-solarpanel.tick)>(60*60*15) then 
					if math.random(2500)==1 then
					solarpanel.entity.damage(5, glob.damagingforce)
					fs.dmgMsg(solarpanel.entity, glob, game)
					end
				end
			else
		table.remove(glob.solarpanel, i)
			end
		end
    end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	--[[Gem collector build]]--
	if event.createdentity.name == "gem-collector" then				
		if glob.gem==nil then
			glob.gem={}
			glob.gemcount=0
		end
		glob.gemcount=glob.gemcount+1
		glob.gem[glob.gemcount]={}
		glob.gem[glob.gemcount].position=event.createdentity.position
	--[[Stone Collector Build]]--
	elseif event.createdentity.name == "stone-collector" then				
		if glob.stone==nil then
			glob.stone={}
			glob.stonecount=0
		end
		glob.stonecount=glob.stonecount+1
		glob.stone[glob.stonecount]={}
		glob.stone[glob.stonecount].position=event.createdentity.position
	elseif event.createdentity.name == "stone-collector-1" then				
		if glob.stone==nil then
			glob.stone={}
			glob.stonecount=0
		end
		glob.stonecount=glob.stonecount+1
		glob.stone[glob.stonecount]={}
		glob.stone[glob.stonecount].position=event.createdentity.position
	--[[Sand Collector Build]]--
	elseif event.createdentity.name == "sand-collector" then				
		if glob.sand==nil then
			glob.sand={}
			glob.sandcount=0
		end
		glob.sandcount=glob.sandcount+1
		glob.sand[glob.sandcount]={}
		glob.sand[glob.sandcount].position=event.createdentity.position
	elseif event.createdentity.name == "sand-collector-1" then				
		if glob.sand==nil then
			glob.sand={}
			glob.sandcount=0
		end
		glob.sandcount=glob.sandcount+1
		glob.sand[glob.sandcount]={}
		glob.sand[glob.sandcount].position=event.createdentity.position
	--[[Coal Collector Build]]--
	elseif event.createdentity.name == "coal-collector" then				
		if glob.coal==nil then
			glob.coal={}
			glob.coalcount=0
		end
		glob.coalcount=glob.coalcount+1
		glob.coal[glob.coalcount]={}
		glob.coal[glob.coalcount].position=event.createdentity.position
	elseif event.createdentity.name == "coal-collector-1" then				
		if glob.coal==nil then
			glob.coal={}
			glob.coalcount=0
		end
		glob.coalcount=glob.coalcount+1
		glob.coal[glob.coalcount]={}
		glob.coal[glob.coalcount].position=event.createdentity.position
	--[[Tree Build]]--
	elseif string.find(event.createdentity.name,"%-tree")~=nil then                
		specie = string.gsub(event.createdentity.name, '%-tree', '') 
		if glob[specie.."trees"]==nil then
			glob[specie.."trees"]={}
		end
		table.insert(glob[specie.."trees"], {entity=game.createentity({name=specie.."-tree", position=event.createdentity.position, force=game.forces.neutral}), time=0})
		event.createdentity.destroy()
	--[[Steam Engine Build]]--
	elseif event.createdentity.name == "steam-engine-primary" or event.createdentity.name == "steam-engine" or event.createdentity.name == "steam-engine-terciary" then
		if not glob.steamengine then 
			glob.steamengine = {}
		end
		table.insert(glob.steamengine, event.createdentity)
	--[[Solar Panel Build]]--
	elseif event.createdentity.name == "solar-panel" or event.createdentity.name == "solar-panel-secondary" or event.createdentity.name == "solar-panel-terciary" then
		if not glob.solarpanel then
			glob.solarpanel = {}
		end
		table.insert(glob.solarpanel, {entity=event.createdentity, tick=event.tick})
	elseif game.entityprototypes.quartz then --[[Industrio Compatibility]]--
		if event.createdentity.name == "solar-array-mk1" or event.createdentity.name == "solar-array-mk2" then
			if not glob.solarpanel then
				glob.solarpanel = {}
			end
		table.insert(glob.solarpanel, {entity=event.createdentity, tick=event.tick})
		end
	--[[Biter spawner build]]--
	elseif event.createdentity.name == "biter-spawner-1" then
		if not glob.spawning then 
			glob.spawning = {}
		end
		table.insert(glob.spawning, event.createdentity) 
	end
end)

game.onevent(defines.events.onchunkgenerated, function(event)
   --[[Tree generator]]--
	if math.random(5)==1 then
		local specieOfTree=glob.specieOfTreeTable[math.random(#glob.specieOfTreeTable)]
		local treex = event.area.lefttop.x+math.random(32)
		local treey = event.area.lefttop.y+math.random(32)
			if glob[specieOfTree.."trees"]==nil then
				glob[specieOfTree.."trees"]={}
			end
		if game.canplaceentity{name=(specieOfTree.."-tree"), position={treex,treey}} then -- should prevent trees spawning in water/other entities.
			createdentity=game.createentity{name=(specieOfTree.."-tree"), position={treex,treey}, force=game.forces.neutral}
		table.insert(glob[specieOfTree.."trees"], {entity=createdentity})
		end
	end
end)

remote.addinterface("DyTech",
{
	scan = function() --this searches around the player for steam engines and solar panels to add to tabel for the damage events!
		if not glob.steamengine then glob.steamengine={} end
		local current=#glob.steamengine
		local scan = game.findentitiesfiltered{name="steam-engine", area={fs.getboundingbox(game.player.position, 100)}}
			for _, engine in pairs(scan) do
        local found=false
			for _, known in pairs(glob.steamengine) do if engine.equals(known) then found=true break end end
        if not found then table.insert(glob.steamengine, engine) end
			end
			game.player.print(#scan.." "..game.getlocalisedentityname("steam-engine").."s "..game.gettext("msg-found"))
		if not glob.solarpanel then glob.solarpanel={} end
		local scan = game.findentitiesfiltered{name="solar-panel", area={fs.getboundingbox(game.player.position, 100)}}
		current=#glob.solarpanel
		for _, panel in pairs(scan) do
		local found=false
			for _, known in pairs(glob.solarpanel) do if panel.equals(known.entity) then found=true break end end
			if not found then table.insert(glob.solarpanel, {entity=panel, tick=(game.tick-60*60*15)}) end
		end
		game.player.print(#glob.solarpanel-current.." "..game.getlocalisedentityname("solar-panel").."s "..game.gettext("msg-found"))
	end,
	
	toggleMessages = function() --toggle for the damage messages of the Solar Panels and Steam Engines
		if glob.message then
			glob.message = not glob.message --sets message to true if it is false and visa versa
		else
			glob.message = true --sets message to true if it does not exist, just run it a second time to set to false
		end
    if glob.message then glob.damagingforce = game.forces.enemy else glob.damagingforce = game.player.force end
    game.player.print(game.gettext("msg-dmg-msgs").." "..tostring(glob.message))
	end, --leave off the , if it's the last function inside of addinterface
  
	clearengines = function() glob.steamengine=nil end,
  
	clearsolar = function() glob.solarpanel=nil end,
  
	getenginecount = function()
  for i, steamengine in pairs(glob.steamengine) do
    if not steamengine.valid then
      table.remove(glob.steamengine, i)
    end
  end
  return #glob.steamengine end,
  
	getsolarcount = function()
  for i, solarpanel in pairs(glob.solarpanel) do
    if not solarpanel.valid then
      table.remove(glob.solarpanel, i)
    end
  end
  return #glob.solarpanel end,
  
  damage = function() -- test deaths
    if (not glob.solarpanel) and (not glob.steamengine) then return end --return because there is nothing to damage.
    if not glob.steamengine then --if missing steamengine, but solarpanels exist, create steamengine list
      glob.steamengine = {} end
    if not glob.solarpanel then --if missing solarpanels, but steamengine exist, create solarpanels list
      glob.solarpanel = {}
    end
    for i, steamengine in pairs(glob.steamengine) do
			if steamengine.valid then --energy less than 44% power output
					steamengine.damage(500, glob.damagingforce)
			elseif not steamengine.valid then
        table.remove(glob.steamengine, i)
			end
		end
    for i, solarpanel in pairs(glob.solarpanel) do
			if solarpanel.valid then --energy less than 44% power output
					solarpanel.damage(50, glob.damagingforce)
			elseif not solarpanel.valid then
        table.remove(glob.solarpanel, i)
			end
		end
  end,
  
  CounterPrint = function() 
	fs.CounterPrinter(game, tostring, glob)
  end,
  
  RewardPrint = function() 
			game.player.print("Unlocked Gemstone Axe is".." "..tostring(glob.reward.axe1))
  end,
  
  Reset = function()
			game.reloadscript()
			game.player.force.resettechnologies()
			game.player.force.resetrecipes()
  end,
  
  Combat = function()
			game.player.print("The counters for the killed biters are:")
			game.player.print("Small Biters:".." "..tostring(glob.combat.small))
			game.player.print("Medium Biters:".." "..tostring(glob.combat.medium))
			game.player.print("Big Biters:".." "..tostring(glob.combat.big))
			game.player.print("Berserker Biters:".." "..tostring(glob.combat.berserker))
			game.player.print("Elder Biters:".." "..tostring(glob.combat.elder))
			game.player.print("King Biters:".." "..tostring(glob.combat.king))
			game.player.print("Queen Biters:".." "..tostring(glob.combat.queen))
			game.player.print("Dogs:".." "..tostring(glob.combat.dog))
			game.player.print("Birds:".." "..tostring(glob.combat.bird))
			game.player.print("Global Counter:".." "..tostring(glob.combat.dytech))
  end
})
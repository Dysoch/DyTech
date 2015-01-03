-- generic eventInfo layout (aka, the header file you'd give to people), this is what will be passed in the remote call
{
  "recipePreReqs" = {} --optional, list of recipe names that need to be unlocked before this event 'activates'
  "techPreReqs" = {} --optional, list of technology names that need to be unlocked before this event 'activates'
  -- randomizers should return a value to be compared against
  -- Ex: function return math.random(75, 200) end
  -- Ex: function return 55 end
  "comparators" = {{counter, function() end}} -- table of tables which contain the counter and randomizer to be compared against
  "failure" = amount to reduce first counter in comparators by upon failure -- optional, specified if DynamicFailure should be called
  "unlock" = function() end--function to run on successful completion of event
}

remote.call("DyTech", "AddUnlock", {recipePreReqs={"repair-pack"}, {{glob.counter.robot, function() return math.random(75,200) end}}, failure=50,
unlocked=function()
  game.player.force.recipes["repair-pack"].enabled = true
  game.player.print(game.gettext("msg-robot-1"))
  game.player.force.resetrecipes()
end})

remote.addinterface("DyTech",

... --current stuff

AddUnlock = function(eventInfo)
-- I think 2 should report the calling mod as the  source of the error but I'm not certain with Factorio.
  assert(type(eventInfo) == "table", "Did not receive a table!", 2)
  assert(type(eventInfo.unlock) == "function", "unlock must be a function!",2)
  -- could do some additional sanity checking here....make sure you have a table, make sure that each counter has a function (and they are in the proper order), etc.
  table.insert(glob.events, eventInfo)
end)

function dynamicUnlocks(event, ttime) -- no 'r' because there's really no need to provide it as an argument
  for i, addedevent in ipairs(glob.events) do
    if event.tick % ttime == (ds.eventtime*i) then
    -- hm, lua has no 'continue' command so I can't just skip to the next event when something fails...
    -- and break would prevent the checking of any others..., so I'll use run.
      local run = true -- assume true
      if addedevent.recipePreReqs then --make sure recipePreReqs are met
        for _, recipe in ipairs(addedevent.precipePreReqs) do 
          if not game.player.force.recipes[recipe].enabled then
            run = false
            break
          end
        end
      end
      if run and addedevent.techPreReqs then --make sure techPreReqs are met
        for _, tech in ipairs(addedevent.techPreReqs) do 
          if not game.player.force.technologies[tech].researched then
            run = false
            break
          end
        end
      end
      if run and addedevent.comparators then
        for _, test in ipairs addedevent.comparators do
          if not (test[1] > test[2]()) then --compare first counter to provided function.
            run = false
            break
          end
        end
      end
      if run and addedevent.failure then
        run=DynamicFailure(glob.counter.dytech)
      end
      if run then
        addedevent.unlock()
        table.remove(glob.events, i) --we have unlocked this event, so don't bother checking it later :)
      elseif addedevent.failure then -- without the repeat check for failure here this would happen even if failure was never specified (or was explicitly stated as false)
        addedevent.comparators[1][1] = addedevent.comparators[1][1] - addedevent.failure -- decrement first counter by failure value
      end
    end
  end
end
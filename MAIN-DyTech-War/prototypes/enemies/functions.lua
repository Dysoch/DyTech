function enemydyingsound()
  return
  {
    {
      filename = "__base__/sound/creatures/creeper-death-1.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/creatures/creeper-death-2.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/creatures/creeper-death-3.ogg",
      volume = 0.7
    },
    {
      filename = "__base__/sound/creatures/creeper-death-4.ogg",
      volume = 0.7
    }
  }
end

function make_unit_melee_ammo_fire(damagevalue)
  return
  {
    category = "melee",
    target_type = "entity",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = { amount = damagevalue , type = "fire"}
        }
      }
    }
  }
end

function make_unit_melee_ammo_laser(damagevalue)
  return
  {
    category = "melee",
    target_type = "entity",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = { amount = damagevalue , type = "laser"}
        }
      }
    }
  }
end

function make_unit_melee_ammo_poison(damagevalue)
  return
  {
    category = "melee",
    target_type = "entity",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = { amount = damagevalue , type = "poison"}
        },
        {
          type = "damage",
          damage = { amount = damagevalue , type = "acid"}
        },
      }
    }
  }
end

function spitterattackparametersFire(data)
  return
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.9,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "berserker-projectile",
          starting_speed = 0.5
        }
      }
    },
    sound = make_spitter_roars(0.75),
    animation = spitterattackanimation(data.scale, data.tint),
  }
end

function spitterattackparametersLaser(data)
  return
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.9,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "elder-projectile",
          starting_speed = 2.5
        }
      }
    },
    sound = make_spitter_roars(0.75),
    animation = spitterattackanimation(data.scale, data.tint),
  }
end

function spitterattackparametersAcid(data)
  return
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.9,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "king-projectile",
          starting_speed = 2.5
        }
      }
    },
    sound = make_spitter_roars(0.75),
    animation = spitterattackanimation(data.scale, data.tint),
  }
end
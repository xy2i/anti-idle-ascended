//! status=pending
onClipEvent(enterFrame){
   type = _parent.type;
   subtype = _parent.subtype;
   name = _parent.name;
   if(name.indexOf("[S]") != -1)
   {
      typeS = true;
   }
   else
   {
      typeS = false;
   }
   if(name.indexOf("[I]") != -1)
   {
      typeI = true;
   }
   else
   {
      typeI = false;
   }
   reqRank = _parent.reqRank;
   frame = _parent.frame;
   range = _parent.range;
   attack = _parent.attack;
   speed = _parent.speed;
   defense = _parent.defense;
   power = _parent.power;
   curse = _parent.curse;
   success = _parent.success;
   bonus = _parent.bonus;
   ability = _parent.ability;
   moreBonus = _parent.moreBonus;
   maxLevel = _parent.maxLevel;
   expTNL = _parent.expTNL;
   cost = Infinity;
   costType = "Blue Coins";
   sell = _parent.sell;
   expiry = _parent.expiry;
   enhance = _parent.enhance;
   bonusPow = _parent.bonusPow;
   secretPow = _parent.secretPow;
   noBonus = _parent.noBonus;
   noLife = _parent.noLife;
   noRecycle = _parent.noRecycle;
   noFuse = _parent.noFuse;
   noUnique = _parent.noUnique;
   spirit = _parent.spirit;
   unob = _parent.unob;
   crit = _parent.crit;
   dexterity = _parent.dexterity;
   health = _parent.health;
   desc = _parent.desc;
   setID = _parent.setID;
   if(type == "Weapon")
   {
      attToGet = Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
      attackMin = attack + Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * 0.9 + 0.001);
      attackMax = attack + Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * 1.1 + 0.001);
      defenseMin = defense;
      defenseMax = defense;
      if(noUnique == true)
      {
         attackMin = attack + Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
         attackMax = attack + Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
      }
      defToGet = Math.floor(_parent.crystal1Apply * 0.1 + _parent.crystal2Apply * 0.3 + 0.001);
      spdToGet = Math.floor(_parent.crystal2Apply * 0.01 + 0.001);
      critToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      dexToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      hpToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      bonusPow = Math.round(attToGet + defToGet * 5 / 12 + spdToGet * 20 + critToGet * 5 + dexToGet * 5 + hpToGet * 5) + _parent.bonusPow;
      attack += attToGet;
      speed += spdToGet;
      defense += defToGet;
      crit += critToGet;
      dexterity += dexToGet;
      health += hpToGet;
   }
   else
   {
      defToGet = Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
      attackMin = attack;
      attackMax = attack;
      defenseMin = defense + Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * 0.9 + 0.001);
      defenseMax = defense + Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * 1.1 + 0.001);
      if(noUnique == true)
      {
         defenseMin = defense + Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
         defenseMax = defense + Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
      }
      attToGet = Math.floor(_parent.crystal1Apply * 0.05 + _parent.crystal2Apply * 0.15 + 0.001);
      spdToGet = Math.floor(_parent.crystal2Apply * 0.01 + 0.001);
      critToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      dexToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      hpToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
      bonusPow = Math.round(attToGet * 5 / 2 + defToGet + spdToGet * 20 + critToGet * 5 + dexToGet * 5 + hpToGet * 5) + _parent.bonusPow;
      attack += attToGet;
      speed += spdToGet;
      defense += defToGet;
      crit += critToGet;
      dexterity += dexToGet;
      health += hpToGet;
   }
   craftItem = true;
}



//! status=pending
function getLoot()
{
   if(_root.filterItem(name,sell) == false)
   {
      if(name == "Roflhunter\'s Pendant")
      {
         _root.save.roflPendant += 1;
      }
      if(type == "Enhancer")
      {
         _root.getArenaEnhancer(subtype,frame,power,curse,success,bonus,ability,moreBonus,enhance,bonusPow,sell,expiry,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Enhancer")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else if(type == "Weapon")
      {
         _root.getArenaWeapon(reqRank,subtype,frame,range,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Weapon")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else if(type == "Potion")
      {
         _root.getArenaPotion(subtype,frame,attack,defense,enhance,bonusPow,sell,expiry,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Potion")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else if(type == "Accessory")
      {
         _root.getArenaAccessory(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noUnique,spirit,unob,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Accessory")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else if(type == "Outfit")
      {
         _root.getArenaOutfit(reqRank,subtype,frame,bonusPow,sell,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Accessory")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else if(type == "Chip")
      {
         _root.getArenaChip(subtype,frame,attack,defense,enhance,bonusPow,sell,expiry,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Chip")
            {
               _root.save.questCount += 1;
            }
         }
      }
      else
      {
         _root.getArenaArmor(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc);
         if(_root.save.questType == "Loot")
         {
            if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Armor")
            {
               _root.save.questCount += 1;
            }
         }
      }
      _root.toCheck = true;
      _root.gCheck = true;
   }
}
leftChance = 0.3;
magneticChance = 1;
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
_X = x;
_Y = y - 50;
xVel = Math.random() * 2;
if(Math.random() < leftChance)
{
   xVel = (- Math.random()) * 2;
}
magnetic = false;
if(_root.lootMagnet == true && Math.random() < magneticChance)
{
   magnetic = true;
}
if(_root.save.bouncyLoot == false)
{
   if(magnetic == true)
   {
      _X = 80;
   }
   else if(_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
   {
      _X = 80;
   }
   else if(x > 85)
   {
      _X = x + xVel * 100;
   }
   else
   {
      _X = x;
   }
   _Y = y;
}
yVel = -5;
xalpha = 250;
del = 0;
onEnterFrame = function()
{
   del += 1;
   if(del >= 2)
   {
      del = 0;
      xVel *= 0.98;
      if(_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
      {
         xVel -= 1;
         if(_root.save.bouncyLoot == false)
         {
            _X = 80;
         }
      }
      yVel += 1;
      if(_Y > y)
      {
         yVel *= -0.6;
      }
      if(_root.save.bouncyLoot != false)
      {
         if(magnetic == true)
         {
            xVel -= 1;
         }
         _X += xVel;
         _Y += yVel;
      }
      if(_X > 500)
      {
         _X = 500;
      }
      if(xalpha > 0)
      {
         xalpha -= 100 / _root.fps;
         if(_X < 85 || _xmouse >= -25 && _xmouse <= 25 && _ymouse >= -50 && _ymouse <= 5 && _root.cursoridle < 60)
         {
            _root.save.arenaLoot += 1;
            getLoot();
            onEnterFrame = null;
            unloadMovie(this);
            this.removeMovieClip();
         }
      }
      else
      {
         onEnterFrame = null;
         unloadMovie(this);
         this.removeMovieClip();
      }
      if(_root._quality == "HIGH" || _root._quality == "BEST")
      {
         _alpha = xalpha;
         if(_alpha > 100)
         {
            _alpha = 100;
         }
      }
   }
};

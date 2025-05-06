//! status=pending
function getLoot()
{
   if(_root.save.questType == "Loot")
   {
      if(_root.save.questSubtype == "Any" || _root.save.questSubtype == "Ring")
      {
         _root.save.questCount += 1;
      }
   }
   if(_root.save.arenaZone == 44 && _root.save.questType == "Loot" && _root.save.questSubtype == "Roflhunter\'s Ring" && Math.random() < 0.5)
   {
      _root.save.questCount += 1;
      _root.dispNews(44,"Found new Ring! [Roflhunter\'s Ring]");
   }
   else
   {
      ringType = random(16) + 1;
      if(_root.save.arenaZone >= 50 && _root.save.arenaZone <= 54 || _root.save.arenaZone == 78 || _root.save.arenaZone >= 85 && _root.save.arenaZone <= 91)
      {
         ringType = random(22) + 1;
      }
      if(_root.save.arenaRingOwned[ringType] > 0)
      {
         ringType = 0;
      }
      if(ringType != 0)
      {
         _root.save.arenaRingOwned[ringType] = 1;
         _root.dispNews(44,"Found new Ring! [Ring of " + ringArray[ringType] + "]");
         _root.checkBestiary();
      }
      else
      {
         pixelToGain = Math.floor(100 * _root.save.arenaLevel);
         _root.save.arenaPixel += pixelToGain;
         _root.dispNews(45,"Found Ring! (+" + _root.withComma(pixelToGain) + " Pixels)");
         powerType = random(4) + 1;
         if(Math.random() < 0.25)
         {
            powerType = random(7) + 1;
         }
         amntToGain = 5 + random(6);
         if(powerType == 1)
         {
            _root.save.arenaAttack += amntToGain;
            _root.house.arena.showDamage("Attack +" + _root.withComma(amntToGain),16711680,_X,_Y - 50);
         }
         else if(powerType == 2)
         {
            _root.save.arenaDefense += amntToGain;
            _root.house.arena.showDamage("Defense +" + _root.withComma(amntToGain),16711680,_X,_Y - 50);
         }
         else if(powerType == 3)
         {
            _root.save.arenaMaxHealth += 10 * amntToGain;
            _root.house.arena.showDamage("MaxHP +" + _root.withComma(10 * amntToGain),16711680,_X,_Y - 50);
         }
         else if(powerType == 4)
         {
            _root.save.arenaMaxMana += 4 * amntToGain;
            _root.house.arena.showDamage("MaxMP +" + _root.withComma(4 * amntToGain),16711680,_X,_Y - 50);
         }
         else if(powerType == 5)
         {
            _root.save.arenaAccuracy += 2 * Math.ceil(amntToGain / 4.5);
            _root.house.arena.showDamage("Accuracy +" + _root.withComma(Math.ceil(amntToGain / 4.5)),16711680,_X,_Y - 50);
         }
         else if(powerType == 6)
         {
            _root.save.arenaEvasion += 2 * Math.ceil(amntToGain / 4.5);
            _root.house.arena.showDamage("Evasion +" + _root.withComma(Math.ceil(amntToGain / 4.5)),16711680,_X,_Y - 50);
         }
         else if(powerType == 7)
         {
            if(_root.save.arenaBuffType == 0 && Math.random() < 0.3)
            {
               _root.save.arenaBuffType = random(3) + 1;
               _root.save.arenaBuffDuration = 10;
               if(_root.save.arenaBuffType == 1)
               {
                  _root.house.arena.showDamage("Power Buff +10s",16711680,_X,_Y - 50);
               }
               else if(_root.save.arenaBuffType == 2)
               {
                  _root.house.arena.showDamage("Master Buff +10s",16711680,_X,_Y - 50);
               }
               else if(_root.save.arenaBuffType == 3)
               {
                  _root.house.arena.showDamage("Reward Buff +10s",16711680,_X,_Y - 50);
               }
            }
            else if(_root.save.arenaBuffDuration < 6000 && _root.save.arenaBuffType < 4 && Math.random() < 0.3)
            {
               _root.save.arenaBuffDuration += 1;
               _root.house.arena.showDamage("Buff Duration +1s",16711680,_X,_Y - 50);
            }
            else
            {
               _root.save.arenaExp += 1000 * amntToGain;
               _root.house.arena.showDamage("A.EXP +" + _root.withComma(1000 * amntToGain),10092288,_X,_Y - 50);
            }
         }
      }
   }
}
leftChance = 0.3;
magneticChance = 1;
ringArray = ["","Health","Mana","Power","Speed","Mastery","Critical","Defense","Reflection","Accuracy","Evasion","Leech","Chaos","Encounter","Experience","Greed","Protection","Luck","Combo","Chronos","Rage","Resistance","Cruelty"];
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
         _X = _X + xVel;
         _Y = _Y + yVel;
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
      }
   }
};

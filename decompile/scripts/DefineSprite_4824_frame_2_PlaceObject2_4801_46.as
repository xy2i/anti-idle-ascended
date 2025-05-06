//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Heal</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nHP Recovery: <font color=\'#FFFF00\'>" + healPower + "%</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "% (vs. Undead)</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\nReduces the duration of Poison, Weaken, Blind and Slow by " + effectReduce + " sec\nFor " + skillDuration + " sec, Defense +" + defenseIncrease + "%, HP Regen is tripled";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   currentDuration = _root.spiritHeal;
   if(_root.save.arenaLevel < 10)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaSpirit < mpCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaA) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.save.arenaLevel >= 10 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         _root.save.arenaSpirit -= mpCost;
         if(_root.arenaZombify > 0)
         {
            _root.save.arenaHealth -= Math.floor(_root.maxHealth * 10 / 100);
         }
         else
         {
            _root.arenaPoison -= effectReduce;
            _root.arenaWeaken -= effectReduce;
            _root.arenaBlind -= effectReduce;
            _root.arenaSlow -= effectReduce;
            _root.spiritHeal = skillDuration;
            _root.house.arena.checkStat();
            if(_root.save.arenaZone == 24)
            {
               hpInc = 0;
            }
            else if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 1000);
            }
            else if(_root.save.arenaZone == 29)
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 1000 * (0.9 + Math.random() * 0.2));
            }
            else
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 100);
            }
            if(_root.save.arenaHealth >= _root.maxHealth)
            {
               hpInc = 0;
            }
            if(hpInc > 0)
            {
               _root.save.arenaHealth += hpInc;
               _root.house.arena.showDamage(hpInc,39423,62.5,70);
            }
         }
         if(_root.house.arena.enemy.zombie == true && _root.house.arena.enemy.enemyID != 0)
         {
            _root.house.arena.dealDamage(damagePower,0,"Heal");
            if(_root.spiritDouble > 0)
            {
               _root.house.arena.dealDamage(damagePower * 2,0,"Double Hit");
            }
            else if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(damagePower,0,"Double Hit");
            }
         }
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Heal")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 5;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(20 - skillLevel * 1);
   healPower = Math.floor(20 + skillLevel * 8);
   damagePower = Math.floor(1500 + skillLevel * 50);
   skillDelay = Math.floor(350 - skillLevel * 5);
   effectReduce = Math.floor(3 + skillLevel / 10);
   skillDuration = Math.floor(6 + skillLevel / 10);
   defenseIncrease = Math.floor(100 + skillLevel * 10);
}



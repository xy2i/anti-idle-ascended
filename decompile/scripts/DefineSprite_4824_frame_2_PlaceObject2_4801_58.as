//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 70)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Chaos</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nPermanently reduces monster\'s Attack and Accuracy by " + effectDisp + "%. Stat reduction effect is reduced to one-fourth of original effect if used more than once on the same monster. Stacks up to 25 times on each monster. Also inflicts poison, weaken and blind for 1 second.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.house.arena.enemy.hp > 0)
   {
      currentDuration = _root.house.arena.enemy.chaosCount;
   }
   else
   {
      currentDuration = 0;
   }
   if(_root.save.arenaLevel < 70)
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
   if(Key.isDown(_root.saveGlobal.keyArenaV) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.save.arenaLevel >= 70 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeV >= 4 && _root.house.arena.enemy.enemyID != 0)
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0)
         {
            _root.chargeV = 0;
         }
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Chaos")
            {
               _root.save.questCount += 1;
            }
         }
         if(_root.house.arena.enemy.poison < 0)
         {
            _root.house.arena.enemy.poison = 1;
         }
         else
         {
            _root.house.arena.enemy.poison += 1;
         }
         if(_root.house.arena.enemy.weaken < 0)
         {
            _root.house.arena.enemy.weaken = 1;
         }
         else
         {
            _root.house.arena.enemy.weaken += 1;
         }
         if(_root.house.arena.enemy.blind < 0)
         {
            _root.house.arena.enemy.blind = 1;
         }
         else
         {
            _root.house.arena.enemy.blind += 1;
         }
         if(_root.house.arena.enemy.chaosCount < 1)
         {
            _root.house.arena.enemy.attack = Math.floor(_root.house.arena.enemy.attack * (1 - skillEffect));
            _root.house.arena.enemy.accuracy = Math.floor(_root.house.arena.enemy.accuracy * (1 - skillEffect));
            _root.house.arena.enemy.chaosCount = 1;
         }
         else if(_root.house.arena.enemy.chaosCount < 25)
         {
            _root.house.arena.enemy.attack = Math.floor(_root.house.arena.enemy.attack * (1 - skillEffect / 4));
            _root.house.arena.enemy.accuracy = Math.floor(_root.house.arena.enemy.accuracy * (1 - skillEffect / 4));
            _root.house.arena.enemy.chaosCount += 1;
         }
      }
   }
}


onClipEvent(load){
   skillID = 3;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(340 - skillLevel * 4);
   damagePower = Math.floor(1500 + skillLevel * 50);
   spiritMult = 2;
   knockBack = 0;
   skillDelay = 600;
   skillEffect = 0.08 + skillLevel * 0.004;
   if(_root.save.arenaSkill[8] >= 1)
   {
      mpCost -= 20;
   }
   effectDisp = skillEffect * 100;
}



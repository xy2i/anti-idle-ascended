//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Quick Attack</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "% x " + hitCount + "</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
      if(_root.save.arenaAuto == 2)
      {
         _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
      }
      else
      {
         _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   hitCount = 3;
   damagePower = Math.floor(45 + skillLevel * 1 + _root.save.arenaSkill[3] * 5);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 75;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 45;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 30;
   }
   if(_root.save.arenaSkill[6] >= 1)
   {
      hitCount = 4;
      extraPow = Math.floor((_root.accuracy + _root.evasion) / 50000);
      if(extraPow > 100)
      {
         extraPow = 100;
      }
      damagePower += extraPow;
   }
   if(_root.save.arenaLevel < 10)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaMana < mpCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(_root.save.arenaAuto == 2 || Key.isDown(_root.saveGlobal.keyArenaX) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 2;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 2)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && _root.save.arenaLevel >= 10 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = knockBack;
         _root.arenaSkillSpec = "X";
         if(_root.chargeX >= 4 && (_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20))
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20)
         {
            _root.chargeX = 0;
         }
         _root.arenaQuickAttack = true;
         _root.save.arenaMana -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Quick Attack")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 2)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}


onClipEvent(load){
   skillID = 1;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(70 + skillLevel * 1);
   damagePower = Math.floor(45 + skillLevel * 1 + _root.save.arenaSkill[3] * 5);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 75;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 45;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 30;
   }
   knockBack = 0;
   skillDelay = Math.floor(160 - skillLevel * 2);
   hitCount = 3;
   if(_root.save.arenaSkill[6] >= 1)
   {
      hitCount = 4;
   }
}



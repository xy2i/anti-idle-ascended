//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 30)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Power Attack</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + _root.withComma(mpCost) + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
      if(_root.save.arenaAuto == 3)
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
   damagePower = Math.floor(390 + skillLevel * 10 + _root.save.arenaSkill[3] * 7);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 300;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 180;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 120;
   }
   if(_root.save.arenaSkill[7] >= 1)
   {
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
      {
         damagePower += 500;
      }
      else if(_root.save.inventoryRange[_root.save.arenaWeapon] == true)
      {
         damagePower += 750;
      }
      else
      {
         damagePower += 1000;
      }
      extraPow = Math.floor(_root.damageResist / 5000000);
      if(extraPow > 300)
      {
         extraPow = 300;
      }
      damagePower += extraPow;
   }
   if(_root.save.arenaLevel < 30)
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
   if(_root.save.arenaAuto == 3 || Key.isDown(_root.saveGlobal.keyArenaC) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 3;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 3)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && _root.save.arenaLevel >= 30 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = knockBack;
         _root.arenaSkillSpec = "C";
         if(_root.chargeC >= 4 && (_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20))
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20)
         {
            _root.chargeC = 0;
         }
         _root.save.arenaMana -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Power Attack")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 3)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}


onClipEvent(load){
   skillID = 2;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(700 + skillLevel * 10);
   damagePower = Math.floor(390 + skillLevel * 10 + _root.save.arenaSkill[3] * 7);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 300;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 180;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 120;
   }
   if(_root.save.arenaSkill[7] >= 1)
   {
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
      {
         damagePower += 500;
      }
      else if(_root.save.inventoryRange[_root.save.arenaWeapon] == true)
      {
         damagePower += 750;
      }
      else
      {
         damagePower += 1000;
      }
   }
   knockBack = 0;
   skillDelay = Math.floor(210 - skillLevel * 2);
}



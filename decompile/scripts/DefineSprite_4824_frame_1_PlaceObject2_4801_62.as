//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 120)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Combo Strike</font></b> [Lv. " + skillLevel + "]\nCombo Cost: <font color=\'#FFFF00\'>" + comboReq + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(Math.min(_root.arenaCombo * 0.25,2500) * 1) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nConsume COMBO to deal extreme damage and slow the monster down for 1 second. In addition, recover 50% HP and MP, and gain 10% Rage.";
      if(_root.save.arenaAuto == 5)
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
   if(_root.save.arenaLevel < 120)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.arenaCombo < comboReq)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(_root.save.arenaAuto == 5 || Key.isDown(_root.saveGlobal.keyArenaB) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 5;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 5)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaLevel >= 120 && _root.arenaCombo >= comboReq && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(Math.min(_root.arenaCombo * 0.25,2500) * 1);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeB >= 4 && (_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20))
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20)
         {
            _root.chargeB = 0;
         }
         if(_root.house.arena.enemy.slow < 0)
         {
            _root.house.arena.enemy.slow = 1;
         }
         else
         {
            _root.house.arena.enemy.slow += 1;
         }
         _root.arenaStrike = 1;
         if(_root.save.arenaZone == 24)
         {
            hpInc = 0;
         }
         else if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
         {
            hpInc = 20;
         }
         else if(_root.save.arenaZone == 29)
         {
            hpInc = Math.floor(_root.maxHealth * 50 / 1000 * (0.9 + Math.random() * 0.2));
         }
         else
         {
            hpInc = Math.floor(_root.maxHealth * 50 / 100);
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
         _root.save.arenaMana += Math.floor(_root.maxMana / 2);
         _root.save.arenaRage += rage;
         _root.arenaCombo -= comboReq;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Combo Strike")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 5)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}


onClipEvent(load){
   skillID = 4;
   skillLevel = _root.save.arenaSkill[skillID];
   comboReq = Math.floor(500 - skillLevel * 10);
   damagePower = Math.floor(1600 + skillLevel * 30);
   rage = 10;
   knockBack = 0;
   skillDelay = 350;
}



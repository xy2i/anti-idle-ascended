//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Double Attack</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nDeals damage twice to a monster. For " + skillDuration + " seconds, Double Hit Chance +100% and the extra hit deals 2x damage";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   currentDuration = _root.spiritDouble;
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
   if(Key.isDown(_root.saveGlobal.keyArenaX) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.save.arenaLevel >= 10 && _root.arenaBot < 48000)
      {
         _root.spiritDouble = skillDuration;
         _root.house.arena.checkStat();
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeX >= 4 && _root.house.arena.enemy.enemyID != 0)
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0)
         {
            _root.chargeX = 0;
         }
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Double Attack")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 1;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(80 - skillLevel * 1);
   damagePower = Math.floor(600 + skillLevel * 20);
   spiritMult = 0.5;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(2 + skillLevel * 0.1);
   if(_root.save.arenaSkill[6] >= 1)
   {
      skillDuration += 2;
   }
}



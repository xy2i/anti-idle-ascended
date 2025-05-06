//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 30)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Critical Strike</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nDeals massive Critical damage. For " + skillDuration + " seconds, always critical for 2.5x of your Critical Damage.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   currentDuration = _root.spiritCrit;
   if(_root.save.arenaLevel < 30)
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
   if(Key.isDown(_root.saveGlobal.keyArenaC) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.save.arenaLevel >= 30 && _root.arenaBot < 48000)
      {
         _root.spiritCrit = skillDuration;
         _root.house.arena.checkStat();
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeC >= 4 && _root.house.arena.enemy.enemyID != 0)
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0)
         {
            _root.chargeC = 0;
         }
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Critical Strike")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 2;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(160 - skillLevel * 2);
   damagePower = Math.floor(900 + skillLevel * 30);
   spiritMult = 1;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(2 + skillLevel * 0.1);
   if(_root.save.arenaSkill[7] >= 1)
   {
      skillDuration += 2;
   }
}



//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 120)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Overkill</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nInstantly kills a non-boss monster and deals massive damage to bosses. For " + skillDuration + " seconds, Spawn Rate +200% and always kill non-bosses instantly regardless of damage dealt. If the attack misses, the monster will not be killed instantly.";
   }
   if(_root.save.arenaZone == 82)
   {
      _root.actiondescription = "This skill is not allowed in Technical Battleground.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   currentDuration = _root.spiritInsta;
   if(_root.save.arenaLevel < 120 || _root.save.arenaZone == 82)
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
   if(Key.isDown(_root.saveGlobal.keyArenaB) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.save.arenaLevel >= 120 && _root.save.arenaZone != 82 && _root.arenaBot < 48000)
      {
         _root.spiritInsta = skillDuration;
         _root.house.arena.checkStat();
         _root.arenaStrike = 1;
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeB >= 4 && _root.house.arena.enemy.enemyID != 0)
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0)
         {
            _root.chargeB = 0;
         }
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Instant Kill")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 4;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(800 - skillLevel * 10);
   damagePower = Math.floor(3750 + skillLevel * 125);
   spiritMult = 3;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(4 + skillLevel * 0.1);
}



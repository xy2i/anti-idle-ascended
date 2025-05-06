//! status=pending
on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Limit Break</font></b> [Lv. " + skillLevel + "]\nCooldown: <font color=\'#FFFF00\'>15 seconds</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nFor " + skillDuration + " sec, increases the limit of Damage Resist, Hit Chance and Dodge Chance from 90% to 94%, the limit of Mastery, Ignore Defense, Double Hit Chance and Critical Chance from 95% to 97%, the limit of Magic Resist and Negate Effect from 80% to 88%. In addition, if you are using a melee weapon, you will be able to hit monsters that are not within the weapon\'s attack range for " + skillDuration + " sec.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   skillLevel = _root.save.arenaSkill[skillID];
   damagePower = Math.floor(1000 + skillLevel * 100);
   skillDuration = Math.floor(4 + skillLevel / 5);
   currentDuration = _root.spiritBreak;
   if(coolDown > 0)
   {
      if(_root.house.arena.enemy.enemyID != 0)
      {
         if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
         {
            coolDown -= 0.025;
         }
      }
      else
      {
         coolDown -= 1 / _root.fps;
      }
   }
   if(skillLevel <= 0)
   {
      fr = 1;
   }
   else if(coolDown > 0)
   {
      fr = 5;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaPixel < pixelCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaS) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(!Key.isDown(17) && _root.arenaDelay <= 0 && _root.save.arenaPixel >= pixelCost && skillLevel > 0 && coolDown <= 0 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = 4;
         _root.arenaStrike = 1;
         _root.spiritBreak = skillDuration;
         _root.house.arena.checkStat();
         coolDown = 15;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Pixel Throw" || _root.save.questSubtype == "Limit Break")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 101;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 1000;
   pixelCost = 1;
   coolDown = 15;
   damagePower = Math.floor(1000 + skillLevel * 100);
   knockBack = 4;
   skillDelay = 400;
   skillDuration = Math.floor(4 + skillLevel / 5);
}



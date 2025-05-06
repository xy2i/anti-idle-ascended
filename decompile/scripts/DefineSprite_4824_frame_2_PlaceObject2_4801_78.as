//! status=pending
on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Invincibility</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nCooldown: <font color=\'#FFFF00\'>" + (180 - skillLevel * 2) + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nGrants the Invincibility buff for 30 seconds if you don\'t currently have a buff. Also grants the Invincibility aura for 6 seconds, which has the same effects as Invincibility buff and stacks with all other buffs and auras.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   currentDuration = _root.spiritInvincibility;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 700 - skillLevel * 10;
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
   else if(_root.save.arenaSpirit < mpCost)
   {
      fr = 3;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaF) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.save.arenaSpirit >= mpCost && _root.arenaDelay <= 0 && coolDown <= 0 && skillLevel > 0 && _root.arenaBot < 48000)
      {
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.arenaBuffType == 0 || _root.save.arenaBuffType == 7)
         {
            _root.save.arenaBuffType = 7;
            if(_root.save.arenaBuffDuration > 0)
            {
               _root.save.arenaBuffDuration += 30;
            }
            else
            {
               _root.save.arenaBuffDuration = 30;
            }
         }
         _root.spiritInvincibility = 6;
         coolDown = 180 - skillLevel * 2;
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Invincibility")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 106;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 700 - skillLevel * 10;
   coolDown = 180 - skillLevel * 2;
   skillDelay = 275;
}



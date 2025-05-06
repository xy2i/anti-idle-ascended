//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      rollDescA = "Specialized Skill deals 1.2x damage and cooldown time of Specialized Skill is halved";
      rollDescB = "Specialized Skill deals 1.2x damage and cooldown time of Specialized Skill is halved";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         rollDescA = "Chaos\'s Spirit cost is reduced by 20";
         rollDescB = "Chaos\'s Spirit cost is reduced by 20";
      }
      checkDescInside();
   }
   reqRank = 500;
   skillID = 8;
   skillOffset = -1;
   skillName = "Specialized Skill Improve";
   skillDesc = "Increases damage and reduces cooldown time of the Specialized Skill.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Chaos Improve";
      skillDesc = "Decreases the Spirit cost of Chaos.";
   }
}



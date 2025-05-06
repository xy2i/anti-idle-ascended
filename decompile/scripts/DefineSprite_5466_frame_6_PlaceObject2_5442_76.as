//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = (skillLevel + 0) * 0.4;
      pow1B = (skillLevel + 1) * 0.4;
      pow2A = (skillLevel + 0) * 1;
      pow2B = (skillLevel + 1) * 1;
      rollDescA = "Gain extra Coins and Pixels as you deal damage, equal to " + pow1A + "% - " + pow2A + "% of usual amount gained";
      rollDescB = "Gain extra Coins and Pixels as you deal damage, equal to " + pow1B + "% - " + pow2B + "% of usual amount gained";
      checkDescInside();
   }
   reqRank = 120;
   skillID = 53;
   skillOffset = 31;
   skillName = "Autosteal";
   skillDesc = "Automatically steal Coins and Pixels from monsters as you deal damage to them. Steal extra Coins and Pixels by overkilling!";
}



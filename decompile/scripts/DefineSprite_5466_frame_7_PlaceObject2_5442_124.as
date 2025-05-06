//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = Math.floor((skillLevel + 0) * 1);
      pow2B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Critical Damage: +" + pow1A + "%\nIgnore " + pow2A + "% of monster DEF";
      rollDescB = "Critical Damage: +" + pow1B + "%\nIgnore " + pow2B + "% of monster DEF";
      checkDescInside();
   }
   reqRank = 110;
   skillID = 20;
   skillOffset = 37;
   skillName = "Keen Eyes";
   skillDesc = "Allows you to find the monsters\' weak spots, increasing critical damage and allowing you to ignore a portion of their defense!";
}



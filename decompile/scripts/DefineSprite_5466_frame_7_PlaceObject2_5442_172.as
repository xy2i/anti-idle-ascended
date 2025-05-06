//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 80);
      pow1B = Math.floor((skillLevel + 1) * 80);
      rollDescA = "Potion Cost: -" + pow1A + "%";
      rollDescB = "Potion Cost: -" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 120;
   skillID = 26;
   skillOffset = -1;
   skillName = "\'potion [PROFANITY] 1/5\'";
   skillDesc = "Spread lies about recovery potions in order to make them only 1/5th as expensive as before.";
}



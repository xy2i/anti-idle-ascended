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
      rollDescA = "Coin: +" + pow1A + "%\nPixel: +" + pow2A + "%";
      rollDescB = "Coin: +" + pow1B + "%\nPixel: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 30;
   skillID = 35;
   skillOffset = 30;
   skillName = "Money UP!";
   skillDesc = "More money! The more, the better.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.ceil(30 + (skillLevel + 0) * 0.5);
      pow1B = Math.ceil(30 + (skillLevel + 1) * 0.5);
      pow2A = Math.floor(5 + (skillLevel + 0) * 0.2);
      pow2B = Math.floor(5 + (skillLevel + 1) * 0.2);
      rollDescA = "Monster ACC/EVA: -" + pow1A + "%\nBlind Duration: " + pow2A + " sec.";
      rollDescB = "Monster ACC/EVA: -" + pow1B + "%\nBlind Duration: " + pow2B + " sec.";
      checkDescInside();
   }
   reqRank = 165;
   skillID = 44;
   skillOffset = 27;
   skillName = "Blind Power";
   skillDesc = "Increases Blind effect and duration.";
}



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
      rollDescA = "Monster ATT/DEF: -" + pow1A + "%\nWeaken Duration: " + pow2A + " sec.";
      rollDescB = "Monster ATT/DEF: -" + pow1B + "%\nWeaken Duration: " + pow2B + " sec.";
      checkDescInside();
   }
   reqRank = 175;
   skillID = 42;
   skillOffset = 28;
   skillName = "Weaken Power";
   skillDesc = "Increases Weaken effect and duration.";
}



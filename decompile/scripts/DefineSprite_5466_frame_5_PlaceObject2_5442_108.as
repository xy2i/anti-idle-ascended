//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(500 + (skillLevel + 0) * 25);
      pow1B = Math.floor(500 + (skillLevel + 1) * 25);
      pow2A = Math.floor(5 + (skillLevel + 0) * 0.2);
      pow2B = Math.floor(5 + (skillLevel + 1) * 0.2);
      rollDescA = "Poison Damage: " + pow1A + "% / 0.5s\nPoison Duration: " + pow2A + " sec.";
      rollDescB = "Poison Damage: " + pow1B + "% / 0.5s\nPoison Duration: " + pow2B + " sec.";
      checkDescInside();
   }
   reqRank = 145;
   skillID = 40;
   skillOffset = 26;
   skillName = "Poison Power";
   skillDesc = "Increases Poison damage and duration.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "All Elements: +" + pow1A + "%";
      rollDescB = "All Elements: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 500;
   skillID = 56;
   skillOffset = -1;
   skillName = "Elemental Bonus";
   skillDesc = "Increases your damage and resistance against elemental monsters.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1.5);
      pow1B = Math.floor((skillLevel + 1) * 1.5);
      rollDescA = "Double Hit Chance: +" + pow1A + "%";
      rollDescB = "Double Hit Chance: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 120;
   skillID = 55;
   skillOffset = 38;
   skillName = "Double Hit";
   skillDesc = "Gives you a chance to attack one extra time with no speed penalty. Double Hit can be a critical hit.";
}



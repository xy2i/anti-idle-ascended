//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 50);
      pow1B = Math.floor((skillLevel + 1) * 50);
      rollDescA = "Reflect Damage: +" + pow1A + "%";
      rollDescB = "Reflect Damage: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 150;
   skillID = 51;
   skillOffset = 39;
   skillName = "Reflect";
   skillDesc = "Because monsters that attack you must die faster.";
}



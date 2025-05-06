//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Buff Effect: +" + pow1A + "%";
      rollDescB = "Buff Effect: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 120;
   skillID = 62;
   skillOffset = -1;
   skillName = "Buff Boost";
   skillDesc = "Increases the effect of most buffs. Doesn\'t increase duration.";
}



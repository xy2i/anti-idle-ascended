//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Critical Chance: +" + pow1A + "%";
      rollDescB = "Critical Chance: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 100;
   skillID = 19;
   skillOffset = 36;
   skillName = "Critical Chance";
   skillDesc = "Increases your chance to deal critical damage!";
}



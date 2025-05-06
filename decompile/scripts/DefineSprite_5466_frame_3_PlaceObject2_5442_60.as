//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 3);
      pow1B = Math.floor((skillLevel + 1) * 3);
      rollDescA = "Maximum HP: +" + pow1A + "%";
      rollDescB = "Maximum HP: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 25;
   skillID = 22;
   skillOffset = 10;
   skillName = "HP Boost";
   skillDesc = "Increases your maximum HP. Health Points, or if you prefer to call it Hit Points or simply HP, that\'s fine too. That\'s the thing you need to survive.";
}



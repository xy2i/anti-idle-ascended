//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 2);
      pow1B = Math.floor((skillLevel + 1) * 2);
      pow2A = Math.floor((skillLevel + 0) * 10);
      pow2B = Math.floor((skillLevel + 1) * 10);
      rollDescA = "Maximum HP: +" + pow1A + "%\nPotion Efficiency: +" + pow2A + "%";
      rollDescB = "Maximum HP: +" + pow1B + "%\nPotion Efficiency: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 500;
   skillID = 60;
   skillOffset = -1;
   skillName = "Adrenaline";
   skillDesc = "Increases the efficiency of recovery potions and duration of some buffs. Also increases maximum HP.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 0.2);
      pow1B = Math.floor((skillLevel + 1) * 0.2);
      pow2A = Math.floor((skillLevel + 0) * 2);
      pow2B = Math.floor((skillLevel + 1) * 2);
      pow3A = Math.floor((skillLevel + 0) * 0.4);
      pow3B = Math.floor((skillLevel + 1) * 0.4);
      rollDescA = "Weapon Bonus: +" + pow1A + " Tier(s)\nEquipment Attack: +" + pow2A + "\nIgnore " + pow3A + "% of monster DEF";
      rollDescB = "Weapon Bonus: +" + pow1B + " Tier(s)\nEquipment Attack: +" + pow2B + "\nIgnore " + pow3B + "% of monster DEF";
      checkDescInside();
   }
   reqRank = 500;
   skillID = 59;
   skillOffset = -1;
   skillName = "Legendary Weapon";
   skillDesc = "Improves the power and bonuses of all weapons!";
}



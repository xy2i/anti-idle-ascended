//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.ceil((skillLevel + 0) * 1);
      pow1B = Math.ceil((skillLevel + 1) * 1);
      pow2A = (skillLevel + 0) * 1;
      pow2B = (skillLevel + 1) * 1;
      pow3A = 80;
      pow3B = 80;
      rollDescA = "Defense: +" + pow1A + "%\nWhenever you would take more damage than your remaining HP and Revive is unavailable, automatically switch to Tank Mode, reducing the amount of damage taken by " + pow2A + "% and damage dealt by " + pow3A + "% until the end of the battle\nWhen Tank Mode is active, the monster will gain stats 2.5x as fast";
      rollDescB = "Defense: +" + pow1B + "%\nWhenever you would take more damage than your remaining HP and Revive is unavailable, automatically switch to Tank Mode, reducing the amount of damage taken by " + pow2B + "% and damage dealt by " + pow3B + "% until the end of the battle\nWhen Tank Mode is active, the monster will gain stats 2.5x as fast";
      checkDescInside();
   }
   reqRank = 130;
   skillID = 23;
   skillOffset = 8;
   skillName = "Overpowered Tanker";
   skillDesc = "Increase your defense and protect you from deadly situations by allowing you to automatically switch to Tank Mode when needed.";
}



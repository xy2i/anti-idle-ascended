//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = (skillLevel + 0) * 0.5;
      pow2B = (skillLevel + 1) * 0.5;
      rollDescA = "Poison Chance: +" + pow1A + "%\nIf Poison activates when the monster is already poisoned, the next attack deals " + pow2A + "% more damage";
      rollDescB = "Poison Chance: +" + pow1B + "%\nIf Poison activates when the monster is already poisoned, the next attack deals " + pow2B + "% more damage";
      checkDescInside();
   }
   reqRank = 105;
   skillID = 39;
   skillOffset = 22;
   skillName = "Poison Ability";
   skillDesc = "You have a chance to poison the monster and deal damage over time! If poison activates when the monster is already poisoned, the next attack will deal more damage. After poison wears off on a monster, the monster cannot be poisoned again in 0.5 seconds.";
}



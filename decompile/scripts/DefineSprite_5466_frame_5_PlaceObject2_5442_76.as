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
      rollDescA = "Weaken Chance: +" + pow1A + "%\nIf Weaken activates when the monster is already weakened, the next attack deals " + pow2A + "% more damage";
      rollDescB = "Weaken Chance: +" + pow1B + "%\nIf Weaken activates when the monster is already weakened, the next attack deals " + pow2B + "% more damage";
      checkDescInside();
   }
   reqRank = 135;
   skillID = 41;
   skillOffset = 24;
   skillName = "Weaken Ability";
   skillDesc = "You have a chance to weaken the monster and reduce its Attack and Defense! If weaken activates when the monster is already weakened, the next attack will deal more damage. After weaken wears off on a monster, the monster cannot be weakened again in 0.5 seconds.";
}



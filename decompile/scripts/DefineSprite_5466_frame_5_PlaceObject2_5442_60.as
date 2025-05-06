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
      rollDescA = "Blind Chance: +" + pow1A + "%\nIf Blind activates when the monster is already blinded, the next attack deals " + pow2A + "% more damage";
      rollDescB = "Blind Chance: +" + pow1B + "%\nIf Blind activates when the monster is already blinded, the next attack deals " + pow2B + "% more damage";
      checkDescInside();
   }
   reqRank = 125;
   skillID = 43;
   skillOffset = 23;
   skillName = "Blind Ability";
   skillDesc = "You have a chance to blind the monster and reduce its Accuracy and Evasion! If blind activates when the monster is already blinded, the next attack will deal more damage. After blind wears off on a monster, the monster cannot be blinded again in 0.5 seconds.";
}



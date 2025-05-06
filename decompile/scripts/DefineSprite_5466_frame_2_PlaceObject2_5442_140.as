//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Min. Damage: +" + pow1A + "% of Max. Damage";
      rollDescB = "Min. Damage: +" + pow1B + "% of Max. Damage";
      checkDescInside();
   }
   reqRank = 70;
   skillID = 15;
   skillOffset = 7;
   skillName = "Weapon Mastery";
   skillDesc = "As you get used to your weapon, you make fewer mistakes and deal more damage. In other words, it increases your minimum damage and reduces the randomness.";
}



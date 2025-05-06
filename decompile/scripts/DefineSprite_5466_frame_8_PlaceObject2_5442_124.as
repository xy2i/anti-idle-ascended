//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = (skillLevel + 0) * 1.5;
      pow1B = (skillLevel + 1) * 1.5;
      pow2A = Math.floor((skillLevel + 0) * 2);
      pow2B = Math.floor((skillLevel + 1) * 2);
      rollDescA = pow1A + "% chance to nullify melee damage and gain HP equal to " + pow2A + "% of monster\'s ATT";
      rollDescB = pow1B + "% chance to nullify melee damage and gain HP equal to " + pow2B + "% of monster\'s ATT";
      checkDescInside();
   }
   reqRank = 180;
   skillID = 66;
   skillOffset = -1;
   skillName = "Absorb";
   skillDesc = "Whenever a monster attacks you, you have a chance to turn it into healing! Does not work with ranged attacks. Cannot activate more than 2 times in a row on the same monster.";
}



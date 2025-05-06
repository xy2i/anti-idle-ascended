//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 5);
      pow1B = Math.floor((skillLevel + 1) * 5);
      pow2A = (skillLevel + 0) * 1;
      pow2B = (skillLevel + 1) * 1;
      pow3A = Math.floor((skillLevel + 0) * 2);
      pow3B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Magic Reflect: " + pow1A + "% of Physical Reflect\n" + pow2A + "% chance to nullify ranged damage and gain HP equal to " + pow3A + "% of monster\'s Magic ATT";
      rollDescB = "Magic Reflect: " + pow1B + "% of Physical Reflect\n" + pow2B + "% chance to nullify ranged damage and gain HP equal to " + pow3B + "% of monster\'s Magic ATT";
      checkDescInside();
   }
   reqRank = 160;
   skillID = 52;
   skillOffset = 40;
   skillName = "Magic Reflect";
   skillDesc = "Now you can reflect ranged attacks, too! Also grants a chance to turn ranged damage into healing. Absorption effect cannot activate more than 2 times in a row on the same monster.";
}



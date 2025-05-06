//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = skillLevel;
      pow1B = skillLevel + 1;
      pow2A = Math.floor(1000 * Math.pow(1.02,skillLevel) - 1000) / 10;
      pow2B = Math.floor(1000 * Math.pow(1.02,skillLevel + 1) - 1000) / 10;
      pow3A = (skillLevel + 0) * 0.5;
      pow3B = (skillLevel + 1) * 0.5;
      rollDescA = "Each attack on the same monster is 2% stronger than the one before it. Effect stacks up to " + pow1A + " time(s) for up to " + pow2A + "% extra damage. After the monster is attacked the first time, it loses " + pow3A + "% DEF/EVA";
      rollDescB = "Each attack on the same monster is 2% stronger than the one before it. Effect stacks up to " + pow1B + " time(s) for up to " + pow2B + "% extra damage. After the monster is attacked the first time, it loses " + pow3B + "% DEF/EVA";
      checkDescInside();
   }
   reqRank = 180;
   skillID = 63;
   skillOffset = -1;
   skillName = "Crescendo";
   skillDesc = "Each attack is stronger than the one before it!";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = Math.floor((skillLevel + 0) * 0.5);
      pow2B = Math.floor((skillLevel + 1) * 0.5);
      pow3A = (skillLevel + 0) * 2;
      pow3B = (skillLevel + 1) * 2;
      pow4A = Math.floor((skillLevel + 0) * 2);
      pow4B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Damage Taken: -" + pow1A + "%\nDodge Chance: +" + pow2A + "%\nGain extra Damage Resist equal to " + pow3A + "% of remaining MP\n" + pow4A + "% chance to nullify death penalty";
      rollDescB = "Damage Taken: -" + pow1B + "%\nDodge Chance: +" + pow2B + "%\nGain extra Damage Resist equal to " + pow3B + "% of remaining MP\n" + pow4B + "% chance to nullify death penalty";
      checkDescInside();
   }
   reqRank = 120;
   skillID = 61;
   skillOffset = -1;
   skillName = "Protection";
   skillDesc = "I’m not sure how it works. Magic, maybe?";
}



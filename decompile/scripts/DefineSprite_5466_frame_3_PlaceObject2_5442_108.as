//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = (skillLevel + 0) * 0.2;
      pow2B = (skillLevel + 1) * 0.2;
      pow3A = (skillLevel + 0) * 0.2;
      pow3B = (skillLevel + 1) * 0.2;
      rollDescA = "Drain Multiplier: " + pow1A + "\nMax " + pow2A + "% of MaxHP per hit\nWhen HP is at maximum, receive " + pow3A + "% less damage";
      rollDescB = "Drain Multiplier: " + pow1B + "\nMax " + pow2B + "% of MaxHP per hit\nWhen HP is at maximum, receive " + pow3B + "% less damage";
      checkDescInside();
   }
   reqRank = 70;
   skillID = 36;
   skillOffset = 13;
   skillName = "Drain";
   skillDesc = "Allows you to gain HP when you attack monsters. In addition, when your HP is already at maximum, you will take less damage.";
}



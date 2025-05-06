//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 10);
      pow1B = Math.floor((skillLevel + 1) * 10);
      pow2A = Math.floor((skillLevel + 0) * 1);
      pow2B = Math.floor((skillLevel + 1) * 1);
      pow3A = Math.floor((skillLevel + 0) * 1);
      pow3B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Max Spirit: +" + pow1A + "\nMagic Resist: +" + pow2A + "%\nNegate Effect Chance: +" + pow3A + "%";
      rollDescB = "Max Spirit: +" + pow1B + "\nMagic Resist: +" + pow2B + "%\nNegate Effect Chance: +" + pow3B + "%";
      checkDescInside();
   }
   reqRank = 500;
   skillID = 58;
   skillOffset = -1;
   skillName = "Spirit Shield";
   skillDesc = "Gives you a Spirit Shield, which greatly increases your resistance to magic and status effects. Also raises maximum Spirit if a Spirit weapon is equipped.";
}



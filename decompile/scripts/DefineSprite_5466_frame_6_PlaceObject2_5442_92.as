//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = Math.floor((skillLevel + 0) * 2);
      pow2B = Math.floor((skillLevel + 1) * 2);
      pow3A = Math.floor((skillLevel + 0) * 2);
      pow3B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Drop Rate: +" + pow1A + "%\nRare Monster Rate: +" + pow2A + "%\nEpic Monster Rate: +" + pow3A + "%";
      rollDescB = "Drop Rate: +" + pow1B + "%\nRare Monster Rate: +" + pow2B + "%\nEpic Monster Rate: +" + pow3B + "%";
      checkDescInside();
   }
   reqRank = 170;
   skillID = 50;
   skillOffset = 32;
   skillName = "Five-Leaf Clover";
   skillDesc = "Gives you a lot of luck, in the form of Drop Rate and chance to encounter Rare and Epic monsters. It\'s not a clover though...";
}



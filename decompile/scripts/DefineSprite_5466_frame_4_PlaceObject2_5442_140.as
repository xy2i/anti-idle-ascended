//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 3);
      pow1B = Math.floor((skillLevel + 1) * 3);
      rollDescA = "Rage Speed: +" + pow1A + "%";
      rollDescB = "Rage Speed: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 95;
   skillID = 33;
   skillOffset = 21;
   skillName = "Panic";
   skillDesc = "As your RAGE meter fills, you attack faster! Most effective when RAGE meter is full.";
}



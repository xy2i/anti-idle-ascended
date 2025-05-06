//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 2);
      pow1B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Rage Attack: +" + pow1A + "%";
      rollDescB = "Rage Attack: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 85;
   skillID = 32;
   skillOffset = 20;
   skillName = "Rage Power";
   skillDesc = "As your RAGE meter fills, you get more powerful! Most effective when RAGE meter is full.";
}



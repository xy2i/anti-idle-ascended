//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 20);
      pow1B = Math.floor((skillLevel + 1) * 20);
      rollDescA = "Attack +1% every 10 Combo, until " + pow1A + " Combo. Stacks multiplicatively with other Attack bonuses.";
      rollDescB = "Attack +1% every 10 combo, until " + pow1B + " Combo. Stacks multiplicatively with other Attack bonuses.";
      checkDescInside();
   }
   reqRank = 35;
   skillID = 27;
   skillOffset = 15;
   skillName = "Combo Power";
   skillDesc = "Ever wondered what COMBO is for? Yes, this... exactly.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 20);
      pow1B = Math.floor((skillLevel + 1) * 20);
      rollDescA = "Defense +2%, Evasion +2% every 10 Combo, until " + pow1A + " Combo. Stacks multiplicatively with other Defense and Evasion bonuses.";
      rollDescB = "Defense +2%, Evasion +2% every 10 combo, until " + pow1B + " Combo. Stacks multiplicatively with other Defense and Evasion bonuses.";
      checkDescInside();
   }
   reqRank = 75;
   skillID = 28;
   skillOffset = 16;
   skillName = "Combo Protection";
   skillDesc = "Although your Combo breaks if you get hit, it\'s still a good idea to get a bit more defensive while it lasts.";
}



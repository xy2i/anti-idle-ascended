//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 20);
      pow1B = Math.floor((skillLevel + 1) * 20);
      rollDescA = "Accuracy +2%, Critical Chance +1%, Critical Damage +2% every 10 Combo, until " + pow1A + " Combo. Accuracy bonus stacks multiplicatively with other Accuracy bonuses.";
      rollDescB = "Accuracy +2%, Critical Chance +1%, Critical Damage +2% every 10 combo, until " + pow1B + " Combo. Accuracy bonus stacks multiplicatively with other Accuracy bonuses.";
      checkDescInside();
   }
   reqRank = 115;
   skillID = 29;
   skillOffset = 17;
   skillName = "Combo Precision";
   skillDesc = "These skills are getting pretty self-explanatory. You don\'t need a description for this one.";
}



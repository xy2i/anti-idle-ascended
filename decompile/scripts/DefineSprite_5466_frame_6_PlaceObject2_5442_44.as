//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "EXP: +" + pow1A + "%";
      rollDescB = "EXP: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 30;
   skillID = 34;
   skillOffset = 29;
   skillName = "Learner";
   skillDesc = "Every kill is new experience. Increases the EXP you gain for each kill! This includes both Arena EXP and A: TG EXP!";
}



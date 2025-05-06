//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = 1 + (skillLevel + 0) * 0.06;
      pow1B = 1 + (skillLevel + 1) * 0.06;
      pow2A = Math.ceil((skillLevel + 0) * 0.1);
      pow2B = Math.ceil((skillLevel + 1) * 0.1);
      rollDescA = "Charged skills are " + pow1A + "x as powerful\nWhen you use a charged skill, Rage +" + pow2A + "%";
      rollDescB = "Charged skills are " + pow1B + "x as powerful\nWhen you use a charged skill, Rage +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 180;
   skillID = 65;
   skillOffset = -1;
   skillName = "Charge";
   skillDesc = "After you don\'t use an active skill for 4 seconds, the skill will become charged and deals more damage. Skills will also be charged automatically when there are no monsters on screen.\n\nApplicable skills: Skills with X/C/V/B hotkeys";
}



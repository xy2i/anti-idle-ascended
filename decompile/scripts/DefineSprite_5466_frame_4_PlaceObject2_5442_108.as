//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1.5);
      pow1B = Math.floor((skillLevel + 1) * 1.5);
      rollDescA = "Rage Depletion -" + pow1A + "%";
      rollDescB = "Rage Depletion -" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 65;
   skillID = 31;
   skillOffset = 19;
   skillName = "Rage Mastery";
   skillDesc = "After investing your precious Skill Points into this useless skill, you get so angry that your RAGE meter decreases much more slowly.";
}



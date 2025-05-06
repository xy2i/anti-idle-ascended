//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 2);
      pow1B = Math.floor((skillLevel + 1) * 2);
      pow2A = Math.floor(240 - (skillLevel + 0) * 4);
      pow2B = Math.floor(240 - (skillLevel + 1) * 4);
      rollDescA = "Upon death, revive with " + pow1A + "% HP\nCooldown: " + pow2A + " sec.\nIf MaxHP is 19,999,999, cooldown time is reduced by 10%";
      rollDescB = "Upon death, revive with " + pow1B + "% HP\nCooldown: " + pow2B + " sec.\nIf MaxHP is 19,999,999, cooldown time is reduced by 10%";
      checkDescInside();
   }
   reqRank = 180;
   skillID = 64;
   skillOffset = -1;
   skillName = "Revive";
   skillDesc = "Allows you to revive at the same place with no death penalty upon death. When this skill is ready, an icon will appear next to your HP bar.";
}



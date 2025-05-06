//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 2);
      pow1B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Attack Speed: +" + pow1A + "%";
      rollDescB = "Attack Speed: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 80;
   skillID = 16;
   skillOffset = 34;
   skillName = "Weapon Booster";
   skillDesc = "Attack faster! Attack Speed is capped at 25, but having more doesn\'t hurt - it increases your Double Hit Chance!";
}



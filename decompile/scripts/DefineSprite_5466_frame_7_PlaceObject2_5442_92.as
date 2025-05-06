//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 2);
      pow1B = Math.floor((skillLevel + 1) * 2);
      rollDescA = "Critical Damage: +" + pow1A + "%";
      rollDescB = "Critical Damage: +" + pow1B + "%";
      checkDescInside();
   }
   reqRank = 90;
   skillID = 18;
   skillOffset = 35;
   skillName = "Critical Force";
   skillDesc = "Make critical hits even more awesome!";
}



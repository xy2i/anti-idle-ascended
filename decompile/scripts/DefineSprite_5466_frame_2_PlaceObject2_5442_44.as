//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = Math.floor((skillLevel + 0) * 1);
      pow2B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Attack: +" + pow1A + "%\nDefense: +" + pow2A + "%";
      rollDescB = "Attack: +" + pow1B + "%\nDefense: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 10;
   skillID = 9;
   skillOffset = 1;
   skillName = "Strength Enhancement";
   skillDesc = "Improves your Attack and Defense. There\'s no stat called \'Strength\' in this game, but well, whatever.";
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = (skillLevel + 0) * 0.2;
      pow1B = (skillLevel + 1) * 0.2;
      pow2A = Math.floor((skillLevel + 0) * 1);
      pow2B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Damage per status effect: +" + pow1A + "%\nAlways critical when monster HP is below " + pow2A + "%";
      rollDescB = "Damage per status effect: +" + pow1B + "%\nAlways critical when monster HP is below " + pow2B + "%";
      checkDescInside();
   }
   reqRank = 70;
   skillID = 38;
   skillOffset = 33;
   skillName = "Coup de Grace";
   skillDesc = "Deals more damage when the monster is affected by status effects! Also deals critical damage when monster HP is below a certain amount.";
}



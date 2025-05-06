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
      rollDescA = "Hit Chance: +" + pow1A + "%\nAccuracy: +" + _root.withComma(pow2A) + "%";
      rollDescB = "Hit Chance: +" + pow1B + "%\nAccuracy: +" + _root.withComma(pow2B) + "%";
      checkDescInside();
   }
   reqRank = 60;
   skillID = 14;
   skillOffset = 6;
   skillName = "Accuracy Boost";
   skillDesc = "Boosts your accuracy and allows you to ignore the monster\'s ability to evade... sometimes. But it\'s still good.";
}



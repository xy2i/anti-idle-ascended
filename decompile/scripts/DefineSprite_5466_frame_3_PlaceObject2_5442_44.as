//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 50);
      pow1B = Math.floor((skillLevel + 1) * 50);
      pow2A = 100000 + Math.floor((skillLevel + 0) * 20000);
      pow2B = 100000 + Math.floor((skillLevel + 1) * 20000);
      rollDescA = "HP Regen: +" + pow1A + "%\nHP recovered by Health Potion: " + _root.withComma(pow2A);
      rollDescB = "HP Regen: +" + pow1B + "%\nHP recovered by Health Potion: " + _root.withComma(pow2B);
      checkDescInside();
   }
   reqRank = 15;
   skillID = 21;
   skillOffset = 9;
   skillName = "HP Recovery";
   skillDesc = "Increases your natural rate of HP regen - or in other words, you recover more HP every second. Save some potions! Oh, and those potions? Make them better, too.";
}



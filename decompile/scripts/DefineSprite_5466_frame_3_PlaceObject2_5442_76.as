//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 25);
      pow1B = Math.floor((skillLevel + 1) * 25);
      pow2A = 100000 + Math.floor((skillLevel + 0) * 20000);
      pow2B = 100000 + Math.floor((skillLevel + 1) * 20000);
      rollDescA = "MP Regen: +" + pow1A + "%\nMP recovered by Mana Potion: " + _root.withComma(pow2A);
      rollDescB = "MP Regen: +" + pow1B + "%\nMP recovered by Mana Potion: " + _root.withComma(pow2B);
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor((skillLevel + 0) * 1);
         pow1B = Math.floor((skillLevel + 1) * 1);
         pow2A = 50 + Math.floor((skillLevel + 0) * 1);
         pow2B = 50 + Math.floor((skillLevel + 1) * 1);
         rollDescA = "Every second, " + pow1A + "% chance to gain 2 Spirit charges\nSpirit recovered by Spirit Potion: " + pow2A;
         rollDescB = "Every second, " + pow1B + "% chance to gain 2 Spirit charges\nSpirit recovered by Spirit Potion: " + pow2B;
      }
      checkDescInside();
   }
   reqRank = 45;
   skillID = 24;
   skillOffset = 11;
   skillName = "MP Recovery";
   skillDesc = "You recover more MP every second. Save even more potions! Also increases the amount of MP recovered by Mana Potions.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Spirit Recovery";
      skillDesc = "You automatically gain Spirit over time. It doesn\'t matter whether you\'re fighting or not. Isn\'t that awesome? Also increases the amount of Spirit recovered by Spirit Potions.";
   }
}



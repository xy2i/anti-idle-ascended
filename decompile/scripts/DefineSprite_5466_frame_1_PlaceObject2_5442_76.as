//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(70 + (skillLevel + 0) * 1);
      pow1B = Math.floor(70 + (skillLevel + 1) * 1);
      pow2A = Math.floor(45 + (skillLevel + 0) * 1);
      pow2B = Math.floor(45 + (skillLevel + 1) * 1);
      pow3A = Math.floor(160 - (skillLevel + 0) * 2);
      pow3B = Math.floor(160 - (skillLevel + 1) * 2);
      rollDescA = "MP Cost: " + pow1A + "\nPower: " + pow2A + "% x 3\nDelay between attacks: " + pow3A;
      rollDescB = "MP Cost: " + pow1B + "\nPower: " + pow2B + "% x 3\nDelay between attacks: " + pow3B;
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor(80 - (skillLevel + 0) * 1);
         pow1B = Math.floor(80 - (skillLevel + 1) * 1);
         pow2A = Math.floor(600 + (skillLevel + 0) * 20);
         pow2B = Math.floor(600 + (skillLevel + 1) * 20);
         pow3A = Math.floor(2 + (skillLevel + 0) * 0.1);
         pow3B = Math.floor(2 + (skillLevel + 1) * 0.1);
         rollDescA = "Spirit Cost: " + pow1A + "\nPower: " + pow2A + "% + 0.5% per Spirit\nFor " + pow3A + " seconds, 100% chance to Double Hit for 2x damage";
         rollDescB = "Spirit Cost: " + pow1B + "\nPower: " + pow2B + "% + 0.5% per Spirit\nFor " + pow3B + " seconds, 100% chance to Double Hit for 2x damage";
      }
      checkDescInside();
   }
   reqRank = 10;
   skillID = 1;
   skillOffset = -1;
   skillName = "Quick Attack";
   skillDesc = "Attack quickly, dealing damage to the monster multiple times.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Double Attack";
      skillDesc = "Use some Spirit to deal greater damage and deal damage extra times for a short while.";
   }
}



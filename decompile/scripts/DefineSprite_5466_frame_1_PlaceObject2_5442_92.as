//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(700 + (skillLevel + 0) * 10);
      pow1B = Math.floor(700 + (skillLevel + 1) * 10);
      pow2A = Math.floor(390 + (skillLevel + 0) * 10);
      pow2B = Math.floor(390 + (skillLevel + 1) * 10);
      pow3A = Math.floor(210 - (skillLevel + 0) * 2);
      pow3B = Math.floor(210 - (skillLevel + 1) * 2);
      rollDescA = "MP Cost: " + pow1A + "\nPower: " + pow2A + "%\nDelay between attacks: " + pow3A;
      rollDescB = "MP Cost: " + pow1B + "\nPower: " + pow2B + "%\nDelay between attacks: " + pow3B;
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor(160 - (skillLevel + 0) * 2);
         pow1B = Math.floor(160 - (skillLevel + 1) * 2);
         pow2A = Math.floor(900 + (skillLevel + 0) * 30);
         pow2B = Math.floor(900 + (skillLevel + 1) * 30);
         pow3A = Math.floor(2 + (skillLevel + 0) * 0.1);
         pow3B = Math.floor(2 + (skillLevel + 1) * 0.1);
         rollDescA = "Spirit Cost: " + pow1A + "\nPower: " + pow2A + "% + 1% per Spirit\nFor " + pow3A + " seconds, always Critical for 2.5x Critical Damage";
         rollDescB = "Spirit Cost: " + pow1B + "\nPower: " + pow2B + "% + 1% per Spirit\nFor " + pow3B + " seconds, always Critical for 2.5x Critical Damage";
      }
      checkDescInside();
   }
   reqRank = 30;
   skillID = 2;
   skillOffset = -1;
   skillName = "Power Attack";
   skillDesc = "Attack slowly, but deal extremely high damage to the monster.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Critical Strike";
      skillDesc = "Use some Spirit to deal massive critical damage for a short while.";
   }
}



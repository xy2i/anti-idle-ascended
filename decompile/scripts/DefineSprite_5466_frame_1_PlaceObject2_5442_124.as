//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(500 - (skillLevel + 0) * 10);
      pow1B = Math.floor(500 - (skillLevel + 1) * 10);
      pow2A = Math.floor(1600 + (skillLevel + 0) * 30);
      pow2B = Math.floor(1600 + (skillLevel + 1) * 30);
      rollDescA = "Combo: -" + pow1A + "\nPower: " + pow2A + "% + 0.25% per Combo (up to +2500% at 10,000 Combo)\nSlow the monster for 1 sec\nRecover 50% HP and MP\nRage: +10%";
      rollDescB = "Combo: -" + pow1B + "\nPower: " + pow2B + "% + 0.25% per Combo (up to +2500% at 10,000 Combo)\nSlow the monster for 1 sec\nRecover 50% HP and MP\nRage: +10%";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor(800 - (skillLevel + 0) * 10);
         pow1B = Math.floor(800 - (skillLevel + 1) * 10);
         pow2A = Math.floor(3750 + (skillLevel + 0) * 125);
         pow2B = Math.floor(3750 + (skillLevel + 1) * 125);
         pow3A = Math.floor(4 + (skillLevel + 0) * 0.1);
         pow3B = Math.floor(4 + (skillLevel + 1) * 0.1);
         rollDescA = "Spirit Cost: " + pow1A + "\nPower: " + pow2A + "% + 3% per Spirit\nFor " + pow3A + " seconds, Spawn Rate +200% and instantly kill non-boss, non-ULTRA monsters if their remaining HP is 99% or below";
         rollDescB = "Spirit Cost: " + pow1B + "\nPower: " + pow2B + "% + 3% per Spirit\nFor " + pow3B + " seconds, Spawn Rate +200% and instantly kill non-boss, non-ULTRA monsters if their remaining HP is 99% or below";
      }
      checkDescInside();
   }
   reqRank = 120;
   skillID = 4;
   skillOffset = -1;
   skillName = "Combo Strike";
   skillDesc = "Use the power of COMBO to deal extreme damage, briefly slow the monster down and fill your RAGE meter. In addition, recover some HP and MP.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Overkill";
      skillDesc = "Use the great power of Spirit to instantly kill non-bosses and deal massive damage to bosses. Also allows you to instantly kill monsters and increases monster spawn rate for a short while. Instant kill effect only applies to non-boss, non-ULTRA monsters with 99% or less HP remaining.";
   }
}



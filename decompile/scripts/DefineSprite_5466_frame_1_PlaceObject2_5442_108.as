//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(0 + (skillLevel + 0) * 1);
      pow1B = Math.floor(0 + (skillLevel + 1) * 1);
      pow2A = Math.floor(0 + (skillLevel + 0) * 5);
      pow2B = Math.floor(0 + (skillLevel + 1) * 5);
      pow3A = Math.floor(0 + (skillLevel + 0) * 7);
      pow3B = Math.floor(0 + (skillLevel + 1) * 7);
      rollDescA = "Specialized Skill Level: " + pow1A + "\nQuick Attack Power: +" + pow2A + "% x 3\nPower Attack Power: +" + pow3A + "%";
      rollDescB = "Specialized Skill Level: " + pow1B + "\nQuick Attack Power: +" + pow2B + "% x 3\nPower Attack Power: +" + pow3B + "%";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor(340 - (skillLevel + 0) * 4);
         pow1B = Math.floor(340 - (skillLevel + 1) * 4);
         pow2A = Math.floor(1500 + (skillLevel + 0) * 50);
         pow2B = Math.floor(1500 + (skillLevel + 1) * 50);
         pow3A = Math.floor(80 + (skillLevel + 0) * 4) / 10;
         pow3B = Math.floor(80 + (skillLevel + 1) * 4) / 10;
         pow4A = Math.floor(80 + (skillLevel + 0) * 4) / 40;
         pow4B = Math.floor(80 + (skillLevel + 1) * 4) / 40;
         rollDescA = "Spirit Cost: " + pow1A + "\nPower: " + pow2A + "% + 2% per Spirit\nPermanently reduces monster\'s Attack/Accuracy by " + pow3A + "% (1st use) or " + pow4A + "% (2nd to 25th uses). Poisons, weakens and blinds the monster for 1 sec.";
         rollDescB = "Spirit Cost: " + pow1B + "\nPower: " + pow2B + "% + 2% per Spirit\nPermanently reduces monster\'s Attack/Accuracy by " + pow3B + "% (1st use) or " + pow4B + "% (2nd to 25th uses). Poisons, weakens and blinds the monster for 1 sec.";
      }
      checkDescInside();
   }
   reqRank = 70;
   skillID = 3;
   skillOffset = -1;
   skillName = "Specialized Skill";
   skillDesc = "A specialized, weapon-dependent skill! Depending on the type of weapon equipped, this skill has different effects. Also increases the damage dealt by Quick Attack and Power Attack.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Chaos";
      skillDesc = "Use some Spirit to deal a lot of damage and permanently reduce the monster\'s Attack and Accuracy. Stat reduction effect is lowered if used more than once on the same monster, and stacks up to 25 times. Also poisons, weakens and blinds the monster for 1 second.";
   }
}



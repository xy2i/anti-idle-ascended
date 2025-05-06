//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(200 + (skillLevel + 0) * 10);
      pow1B = Math.floor(200 + (skillLevel + 1) * 10);
      pow2A = Math.floor(10 + (skillLevel + 0) * 4);
      pow2B = Math.floor(10 + (skillLevel + 1) * 4);
      pow3A = Math.floor(750 + (skillLevel + 0) * 25);
      pow3B = Math.floor(750 + (skillLevel + 1) * 25);
      pow4A = Math.floor(1 + skillLevel / 10);
      pow4B = Math.floor(1 + (skillLevel + 1) / 10);
      pow5A = Math.floor(3 + skillLevel / 10);
      pow5B = Math.floor(3 + (skillLevel + 1) / 10);
      pow6A = Math.floor(100 + (skillLevel + 0) * 10);
      pow6B = Math.floor(100 + (skillLevel + 1) * 10);
      rollDescA = "MP Cost: " + pow1A + "\nRecovery: " + pow2A + "% of MaxHP\nReduces the duration of Poison, Weaken, Blind and Slow by " + pow4A + " sec\nFor " + pow5A + " seconds, Defense +" + pow6A + "% and HP Regen is tripled\nPower: " + pow3A + "% (vs. Undead)";
      rollDescB = "MP Cost: " + pow1B + "\nRecovery: " + pow2B + "% of MaxHP\nReduces the duration of Poison, Weaken, Blind and Slow by " + pow4B + " sec\nFor " + pow5B + " seconds, Defense +" + pow6B + "% and HP Regen is tripled\nPower: " + pow3B + "% (vs. Undead)";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor(30 - (skillLevel + 0) * 1);
         pow1B = Math.floor(30 - (skillLevel + 1) * 1);
         pow2A = Math.floor(20 + (skillLevel + 0) * 8);
         pow2B = Math.floor(20 + (skillLevel + 1) * 8);
         pow3A = Math.floor(1500 + (skillLevel + 0) * 50);
         pow3B = Math.floor(1500 + (skillLevel + 1) * 50);
         pow4A = Math.floor(3 + skillLevel / 10);
         pow4B = Math.floor(3 + (skillLevel + 1) / 10);
         pow5A = Math.floor(6 + skillLevel / 10);
         pow5B = Math.floor(6 + (skillLevel + 1) / 10);
         rollDescA = "Spirit Cost: " + pow1A + "\nRecovery: " + pow2A + "% of MaxHP\nReduces the duration of Poison, Weaken, Blind and Slow by " + pow4A + " sec\nFor " + pow5A + " seconds, Defense +" + pow6A + "% and HP Regen is tripled\nPower: " + pow3A + "% (vs. Undead)";
         rollDescB = "Spirit Cost: " + pow1A + "\nRecovery: " + pow2B + "% of MaxHP\nReduces the duration of Poison, Weaken, Blind and Slow by " + pow4B + " sec\nFor " + pow5B + " seconds, Defense +" + pow6B + "% and HP Regen is tripled\nPower: " + pow3B + "% (vs. Undead)";
      }
      checkDescInside();
   }
   reqRank = 10;
   skillID = 5;
   skillOffset = -1;
   skillName = "Heal";
   skillDesc = "Use some MP to heal yourself, recover from status effects and damage undead monsters. Ignore 100% of undead monsters\' DEF. Also temporarily increase Defense and HP Regen. If you are zombified, this skill will not allow you to recover from status effects and will cause you to lose HP.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillDesc = "Use some Spirit to heal yourself, recover from status effects and damage undead monsters. Ignore 100% of undead monsters\' DEF. Also temporarily increase Defense and HP Regen. If you are zombified, this skill will not allow you to recover from status effects and will cause you to lose HP.";
   }
}



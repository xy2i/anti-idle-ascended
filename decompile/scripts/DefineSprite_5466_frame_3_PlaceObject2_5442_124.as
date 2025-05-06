//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 500);
      pow1B = Math.floor((skillLevel + 1) * 500);
      rollDescA = "When you kill a monster, MP +" + _root.withComma(pow1A);
      rollDescB = "When you kill a monster, MP +" + _root.withComma(pow1B);
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor((skillLevel + 0) * 1);
         pow1B = Math.floor((skillLevel + 1) * 1);
         pow2A = Math.floor((skillLevel + 0) * 1);
         pow2B = Math.floor((skillLevel + 1) * 1);
         rollDescA = "When you kill a monster, " + pow1A + "% chance to gain 3 extra Spirit charges\nWhen you attack a boss, " + pow2A + "% chance to gain 3 extra Spirit charges";
         rollDescB = "When you kill a monster, " + pow1B + "% chance to gain 3 extra Spirit charges\nWhen you attack a boss, " + pow2B + "% chance to gain 3 extra Spirit charges";
      }
      checkDescInside();
   }
   reqRank = 70;
   skillID = 37;
   skillOffset = 14;
   skillName = "Mana Eater";
   skillDesc = "This skill allows you to eat monsters after they die and recover some MP. When Mana Power is active, amount of MP gained from this skill is multiplied by 25.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Spirit Leech";
      skillDesc = "This skill allows you to eat monsters after they die for a chance to gain 3 additional Spirit charges. It also allows you to gain extra Spirit when fighting bosses.";
   }
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      rollDescA = "Quick Attack hits 1 extra time\nIncrease the Power of Quick Attack by 1% for every 50,000 Accuracy or Evasion, up to a maximum of +100%\nReduce the attack delay of Basic Attack and Auto Fight";
      rollDescB = "Quick Attack hits 1 extra time\nIncrease the Power of Quick Attack by 1% for every 50,000 Accuracy or Evasion, up to a maximum of +100%\nReduce the attack delay of Basic Attack and Auto Fight";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         rollDescA = "Double Attack\'s effect lasts 2 seconds longer";
         rollDescB = "Double Attack\'s effect lasts 2 seconds longer";
      }
      checkDescInside();
   }
   reqRank = 250;
   skillID = 6;
   skillOffset = -1;
   skillName = "Quick Attack Improve";
   skillDesc = "Increases the number of times the monster is attacked when you use Quick Attack. In addition, increase the power of Quick Attack depending on your Accuracy and Evasion stats. Also increases the attack speed of Auto Fight.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Double Attack Improve";
      skillDesc = "Increases the effect duration of Double Attack.";
   }
}



//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      rollDescA = "Power Attack Power +1000% if a melee weapon is equipped (excluding Ultimate Weapon and Reincarnation Weapon)\nPower Attack Power +750% if a ranged weapon is equipped\nPower Attack Power +500% if Ultimate Weapon or Reincarnation Weapon is equipped\nFurther increase the Power of Power Attack by 1% for every 5,000,000 Damage Resist, up to a maximum of +300%\nBasic Attack Power: +100%\nAuto Fight Power: +100%";
      rollDescB = "Power Attack Power +1000% if a melee weapon is equipped (excluding Ultimate Weapon and Reincarnation Weapon)\nPower Attack Power +750% if a ranged weapon is equipped\nPower Attack Power +500% if Ultimate Weapon or Reincarnation Weapon is equipped\nFurther increase the Power of Power Attack by 1% for every 5,000,000 Damage Resist, up to a maximum of +300%\nBasic Attack Power: +100%\nAuto Fight Power: +100%";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         rollDescA = "Critical Strike\'s effect lasts 2 seconds longer";
         rollDescB = "Critical Strike\'s effect lasts 2 seconds longer";
      }
      checkDescInside();
   }
   reqRank = 350;
   skillID = 7;
   skillOffset = -1;
   skillName = "Power Attack Improve";
   skillDesc = "Increases the power of Power Attack depending on the type of weapon used. In addition, increase the power of Power Attack depending on your Damage Resist stat. Also increases the attack power of Auto Fight.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Critical Strike Improve";
      skillDesc = "Increases the effect duration of Critical Strike.";
   }
}



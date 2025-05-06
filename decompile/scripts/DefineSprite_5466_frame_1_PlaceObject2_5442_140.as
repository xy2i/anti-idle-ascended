//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      rollDescA = "Can activate/deactivate Mana Power with the Space key";
      rollDescB = "Can activate/deactivate Mana Power with the Space key";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         rollDescA = "Can activate/deactivate Spirit Power with the Space key";
         rollDescB = "Can activate/deactivate Spirit Power with the Space key";
      }
      checkDescInside();
   }
   reqRank = 180;
   skillID = 49;
   skillOffset = -1;
   skillName = "Mana Power";
   skillDesc = "Allows you to activate and deactivate Mana Power with the Space key. When Mana Power is active, you gain extra Defense, can use MP as a shield and use MP to deal extra damage.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Spirit Power";
      skillDesc = "Allows you to activate and deactivate Spirit Power with the Space key. When Spirit Power is active, you gain extra Spirit when attacking, gain extra Defense, and can use Spirit as a shield. Your Max Spirit also increases, and you automatically use some Spirit to deal extra damage when your Spirit is close to maximum.";
   }
}



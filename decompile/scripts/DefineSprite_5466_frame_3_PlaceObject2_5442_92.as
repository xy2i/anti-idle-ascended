//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 5);
      pow1B = Math.floor((skillLevel + 1) * 5);
      rollDescA = "Maximum MP: +" + pow1A + "%";
      rollDescB = "Maximum MP: +" + pow1B + "%";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         pow1A = Math.floor((skillLevel + 0) * 20);
         pow1B = Math.floor((skillLevel + 1) * 20);
         rollDescA = "Maximum Spirit: +" + pow1A + "";
         rollDescB = "Maximum Spirit: +" + pow1B + "";
      }
      checkDescInside();
   }
   reqRank = 55;
   skillID = 25;
   skillOffset = 12;
   skillName = "MP Boost";
   skillDesc = "Increases your maximum MP, so you can cast more spells.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillName = "Spirit Boost";
      skillDesc = "Increases your maximum Spirit, so you can use more Spirit skills and improve your Spirit power.";
   }
}



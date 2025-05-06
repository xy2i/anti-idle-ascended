//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor(100 + (skillLevel + 0) * 5);
      pow1B = Math.floor(100 + (skillLevel + 1) * 5);
      pow2A = Math.floor(200 + (skillLevel + 0) * 10);
      pow2B = Math.floor(200 + (skillLevel + 1) * 10);
      rollDescA = "Basic Attack Power: " + pow1A + "%\nAuto Fight Power: " + pow1A + "%";
      rollDescB = "Basic Attack Power: " + pow1B + "%\nAuto Fight Power: " + pow1B + "%";
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         rollDescA = "Basic Attack Power: " + pow2A + "% + 0.2% per Spirit\nAuto Fight Power: " + pow2A + "% + 0.2% per Spirit";
         rollDescB = "Basic Attack Power: " + pow2B + "% + 0.2% per Spirit\nAuto Fight Power: " + pow2B + "% + 0.2% per Spirit";
      }
      checkDescInside();
   }
   reqRank = 1;
   skillID = 54;
   skillOffset = -1;
   skillName = "Basic Attack";
   skillDesc = "Your basic attack. Costs no MP. Also improves Auto Fight power.";
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      skillDesc = "Your basic attack. Costs no Spirit. Also improves Auto Fight power.";
   }
}



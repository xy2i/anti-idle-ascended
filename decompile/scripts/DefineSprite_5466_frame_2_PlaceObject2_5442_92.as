//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 10);
      pow1B = Math.floor((skillLevel + 1) * 10);
      pow2A = Math.ceil((skillLevel + 0) * 0.5);
      pow2B = Math.ceil((skillLevel + 1) * 0.5);
      rollDescA = "Equipment Attack: +" + _root.withComma(pow1A) + "\nAttack: +" + pow2A + "%";
      rollDescB = "Equipment Attack: +" + _root.withComma(pow1B) + "\nAttack: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 40;
   skillID = 12;
   skillOffset = 4;
   skillName = "Invisible Weapon";
   skillDesc = "Gives you an invisible weapon, which can be used with another weapon and doesn\'t take up an inventory slot, to add to your damage.";
}



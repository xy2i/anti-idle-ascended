//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 30);
      pow1B = Math.floor((skillLevel + 1) * 30);
      pow2A = Math.ceil((skillLevel + 0) * 1);
      pow2B = Math.ceil((skillLevel + 1) * 1);
      rollDescA = "Equipment Defense: +" + _root.withComma(pow1A) + "\nDefense: +" + pow2A + "%";
      rollDescB = "Equipment Defense: +" + _root.withComma(pow1B) + "\nDefense: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 30;
   skillID = 11;
   skillOffset = 3;
   skillName = "Invisible Armor";
   skillDesc = "Gives you an invisible armor set, which adds to your Defense.";
}



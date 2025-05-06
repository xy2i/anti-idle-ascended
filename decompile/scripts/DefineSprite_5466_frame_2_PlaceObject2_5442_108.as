//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1);
      pow1B = Math.floor((skillLevel + 1) * 1);
      pow2A = Math.floor((skillLevel + 0) * 1);
      pow2B = Math.floor((skillLevel + 1) * 1);
      rollDescA = "Dodge Chance: +" + pow1A + "%\nEvasion: +" + _root.withComma(pow2A) + "%";
      rollDescB = "Dodge Chance: +" + pow1B + "%\nEvasion: +" + _root.withComma(pow2B) + "%";
      checkDescInside();
   }
   reqRank = 50;
   skillID = 13;
   skillOffset = 5;
   skillName = "Artful Dodger";
   skillDesc = "Gives you a chance to dodge any attack.";
}



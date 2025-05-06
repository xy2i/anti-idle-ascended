//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 1.5);
      pow1B = Math.floor((skillLevel + 1) * 1.5);
      pow2A = Math.floor((skillLevel + 0) * 1.5);
      pow2B = Math.floor((skillLevel + 1) * 1.5);
      rollDescA = "Accuracy: +" + pow1A + "%\nEvasion: +" + pow2A + "%";
      rollDescB = "Accuracy: +" + pow1B + "%\nEvasion: +" + pow2B + "%";
      checkDescInside();
   }
   reqRank = 10;
   skillID = 10;
   skillOffset = 2;
   skillName = "Dexterity Enhancement";
   skillDesc = "Improves your Accuracy and Evasion. There\'s no stat called \'Dexterity\' in this game, but well, whatever.";
}



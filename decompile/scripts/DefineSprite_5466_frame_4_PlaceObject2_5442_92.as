//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 20);
      pow1B = Math.floor((skillLevel + 1) * 20);
      rollDescA = "EXP +1%, Coin +1%, Pixel +1% every 10 Combo, until " + pow1A + " Combo";
      rollDescB = "EXP +1%, Coin +1%, Pixel +1% every 10 combo, until " + pow1B + " Combo";
      checkDescInside();
   }
   reqRank = 155;
   skillID = 30;
   skillOffset = 18;
   skillName = "Combo Reward";
   skillDesc = "Think about it. Other than those easy Combo-related achievements that you probably obtained long ago, you can now increase your EXP, Coin and Pixel gain as your Combo increases! Isn\'t it awesome?";
}



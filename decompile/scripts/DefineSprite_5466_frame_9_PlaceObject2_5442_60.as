//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.floor((skillLevel + 0) * 0.2);
      pow1B = Math.floor((skillLevel + 1) * 0.2);
      pow2A = Math.floor((skillLevel + 0) * 2);
      pow2B = Math.floor((skillLevel + 1) * 2);
      pow3A = Math.floor((skillLevel + 0) * 0.2);
      pow3B = Math.floor((skillLevel + 1) * 0.2);
      rollDescA = "Instant Kill Chance: +" + pow1A + "%\nDamage vs. Bosses: +" + pow2A + "%\nHit Chance: +" + pow3A + "%";
      rollDescB = "Instant Kill Chance: +" + pow1B + "%\nDamage vs. Bosses: +" + pow2B + "%\nHit Chance: +" + pow3B + "%";
      checkDescInside();
   }
   reqRank = 500;
   skillID = 57;
   skillOffset = -1;
   skillName = "Master Hunter";
   skillDesc = "Deal more damage to boss monsters and instantly kill non-bosses! Instant Kill effect only applies when the monster has 50% HP or below. Also increases Hit Chance.";
}



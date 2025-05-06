//! status=pending
onClipEvent(load){
   function checkDesc()
   {
      skillLevel = _root.save.arenaSkill[skillID];
      skillMax = _root.save.arenaSkillMax[skillID];
      pow1A = Math.ceil((skillLevel + 0) * 0.4);
      pow1B = Math.ceil((skillLevel + 1) * 0.4);
      pow2A = Math.ceil((skillLevel + 0) * 20);
      pow2B = Math.ceil((skillLevel + 1) * 20);
      rollDescA = "Stun Chance: +" + pow1A + "%\nExplosion Damage: " + pow2A + "%";
      rollDescB = "Stun Chance: +" + pow1B + "%\nExplosion Damage: " + pow2B + "%";
      checkDescInside();
   }
   reqRank = 140;
   skillID = 45;
   skillOffset = 25;
   skillName = "Explosive Attacks";
   skillDesc = "Allows you to stun the monster for 0.5 whopping seconds! Also, when you stun the monster, you immediately attack one extra time! The extra attack is guaranteed to be critical, and knocks the monster back a small distance.\nCooldown after effect expires: 0.5 sec.";
}



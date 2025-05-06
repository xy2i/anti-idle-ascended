//! status=pending
onClipEvent(enterFrame){
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      if(_root.house.arena.enemy.enemyID == 432)
      {
         auraCool -= 1;
      }
      if(_root.arenaChaosPhase == 1 && _root.house.arena.enemy.enemyID == 432 && auraCool <= 0)
      {
         if(_root.dungeonDiff == 3 && _root.dungeonChestOpen >= 16 && auraCount % 5 == 0)
         {
            _root.arenaChaosPhase = 7;
            _root.arenaChaosDuration = 5;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "WHAT? CHAOS uses WHITE AURA!!!!1!";
            _root.house.arena.takeDamage(666666666,"Cannot Dodge");
         }
         else if(_root.dungeonDiff == 3 && _root.dungeonChestOpen >= 6 && Math.random() < 1 / (2000 - _root.dungeonChestOpen * 50))
         {
            _root.arenaChaosPhase = 6;
            _root.arenaChaosDuration = 5;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "CHAOS uses RAINBOW AURA! NOOOOOOOOO!!!!";
         }
         else if((_root.dungeonChestOpen >= 4 || _root.dungeonDiff == 3) && Math.random() < 0.0014285714285714286)
         {
            _root.arenaChaosPhase = 2;
            _root.arenaChaosDuration = 7;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "CHAOS uses Blue Aura!";
         }
         else if((_root.dungeonChestOpen >= 6 || _root.dungeonDiff == 3) && Math.random() < 0.0009090909090909091)
         {
            _root.arenaChaosPhase = 3;
            _root.arenaChaosDuration = 6;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "CHAOS uses Green Aura!";
         }
         else if((_root.dungeonChestOpen >= 8 || _root.dungeonDiff == 3) && Math.random() < 0.0006666666666666666)
         {
            _root.arenaChaosPhase = 4;
            _root.arenaChaosDuration = 7;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "CHAOS uses Red Aura!";
         }
         else if((_root.dungeonChestOpen >= 10 || _root.dungeonDiff == 3) && Math.random() < 0.0005263157894736842)
         {
            _root.arenaChaosPhase = 5;
            _root.arenaChaosDuration = 6;
            auraCount += 1;
            auraCool = 520 - _root.dungeonChestOpen * 8;
            _root.fightStat2 = "CHAOS uses... (hmm, which color is this) AURA!";
         }
      }
      else
      {
         _root.arenaChaosDuration -= 0.025;
         if(_root.arenaChaosDuration <= 0)
         {
            _root.arenaChaosPhase = 1;
         }
      }
      if(_root.arenaChaosPhase == 7)
      {
         _root.save.arenaMana = 0;
         _root.save.arenaSpirit = 0;
      }
   }
   if(_root.dungeonDiff == 3)
   {
      gotoAndStop(_root.arenaChaosPhase + 5);
   }
   else
   {
      gotoAndStop(_root.arenaChaosPhase);
   }
}


onClipEvent(load){
   auraCool = 400;
   auraCount = 0;
}



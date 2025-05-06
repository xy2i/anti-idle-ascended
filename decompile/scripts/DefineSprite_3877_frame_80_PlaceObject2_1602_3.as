//! status=pending
on(release){
   if(_root.save.arenaLevel >= 500)
   {
      _root.save.arenaLevel = 50;
      _root.save.arenaExp = 0;
      _root.save.arenaExpTotal = 0;
      _root.save.arenaAttack = 65000;
      _root.save.arenaDefense = 65000;
      _root.save.arenaMaxHealth = 650000;
      _root.save.arenaMaxMana = 260000;
      _root.save.arenaAccuracy = 13000;
      _root.save.arenaEvasion = 13000;
      _root.save.robaconLevel = 50;
      _root.save.robaconExp = 0;
      _root.save.robaconExpTotal = 0;
      _root.save.arenaWeapon = 0;
      _root.save.arenaHat = 0;
      _root.save.arenaShirt = 0;
      _root.save.arenaGloves = 0;
      _root.save.arenaPants = 0;
      _root.save.arenaShoes = 0;
      _root.save.arenaSkin = 0;
      _root.save.arenaPendant = 0;
      _root.save.arenaMedal = 0;
      _root.save.arenaEarring = 0;
      _root.save.arenaTrinket = 0;
      _root.save.arenaSubWeapon = 0;
      _root.save.battlePoint += 2050;
      _root.save.bannedB += 1;
      _root.save.arenaSP = 1000 + _root.save.arenaUltimateSP * 10;
      _root.save.arenaTotalSkill = 0;
      _root.save.arenaTotalSP = 0;
      i = 1;
      while(i <= 66)
      {
         if(_root.save.arenaSkill[i] > 0)
         {
            _root.save.arenaSkill[i] = 0;
         }
         i++;
      }
      _root.save.arenaBuffType = 0;
      _root.save.arenaBuffDuration = 0;
      _root.gCheck = true;
      _root.save.arenaZone = 0;
   }
}



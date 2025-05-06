//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 40)
   {
      del = 0;
      if(_root.save.arenaZone == 20 || _root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 29 || _root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone == 47 || _root.save.arenaZone == 50 || _root.save.arenaZone >= 53 && _root.save.arenaZone <= 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 69 || _root.save.arenaZone == 78 || _root.save.arenaZone == 79 || _root.save.arenaZone == 80 || _root.save.arenaZone == 81 || _root.save.arenaZone == 82 || _root.save.arenaZone == 83 || _root.save.arenaZone == 84 || _root.save.arenaZone == 93 || _root.save.arenaZone == 94)
      {
         fr = 5;
      }
      else if(_root.save.arenaCorruptionEntry > 0 && (_root.clock_min == 15 || _root.clock_min == 45 || _root.clock_min == 16 || _root.clock_min == 46 || _root.clock_min == 17 || _root.clock_min == 47) && _root.save.battlePoint >= 70)
      {
         fr = 1;
      }
      else if(_root.save.arenaRevengeEntry > 0 && (_root.clock_min == 5 || _root.clock_min == 20 || _root.clock_min == 35 || _root.clock_min == 50 || _root.clock_min == 6 || _root.clock_min == 21 || _root.clock_min == 36 || _root.clock_min == 51 || _root.clock_min == 7 || _root.clock_min == 22 || _root.clock_min == 37 || _root.clock_min == 52) && _root.save.arenaBestiary[295] >= 1 && !isNaN(_root.save.arenaBestiary[295]))
      {
         fr = 2;
      }
      else if(_root.save.arenaEndlessEntry > 0 && (_root.clock_min == 30 || _root.clock_min == 31 || _root.clock_min == 32) && _root.save.arenaBestiary[432] >= 1 && !isNaN(_root.save.arenaBestiary[432]))
      {
         fr = 3;
      }
      else
      {
         fr = 5;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
}


onClipEvent(load){
   gotoAndStop(5);
   del = 40;
}



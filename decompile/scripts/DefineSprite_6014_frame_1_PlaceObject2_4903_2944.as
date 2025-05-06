//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 40)
   {
      if(_root.save.arenaKommanderProgress >= _root.save.arenaKommanderMonCount)
      {
         fr = 1;
      }
      else
      {
         fr = 2;
      }
      if(_root.save.arenaZone == 20 || _root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 29 || _root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone == 47 || _root.save.arenaZone == 50 || _root.save.arenaZone >= 53 && _root.save.arenaZone <= 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 69 || _root.save.arenaZone == 78 || _root.save.arenaZone == 79 || _root.save.arenaZone == 80 || _root.save.arenaZone == 81 || _root.save.arenaZone == 82 || _root.save.arenaZone == 83 || _root.save.arenaZone == 84 || _root.save.arenaZone == 93 || _root.save.arenaZone == 94)
      {
         fr = 3;
      }
      if(_root.save.arenaLevel < 20)
      {
         fr = 3;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
}


onClipEvent(load){
   gotoAndStop(3);
   del = 40;
}



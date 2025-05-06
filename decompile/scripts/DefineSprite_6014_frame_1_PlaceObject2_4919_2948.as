//! status=pending
onClipEvent(load){
   if(_root.save.arenaZone == 7 || _root.save.arenaZone == 24 || _root.save.arenaZone == 52 || _root.save.arenaZone == 54 || _root.save.arenaZone == 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 61 || _root.save.arenaZone == 68 || _root.save.arenaZone == 78 || _root.save.arenaZone == 82)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



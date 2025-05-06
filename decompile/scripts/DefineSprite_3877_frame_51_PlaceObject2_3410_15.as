//! status=pending
onClipEvent(load){
   timeLeft = 900;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 180;
   }
   autoKick = true;
   destination = _root.save.arenaZoneOrig;
}



//! status=pending
onClipEvent(load){
   timeLeft = 370;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 90;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 90;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 15;
   }
   autoKick = true;
   destination = _root.save.arenaZoneOrig;
}



//! status=pending
onClipEvent(load){
   timeLeft = 430;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 120;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 220;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 190;
   }
   if(_root.raidDiff == 1)
   {
      timeLeft -= 60;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft += 840;
   }
   autoKick = true;
   destination = 22;
}



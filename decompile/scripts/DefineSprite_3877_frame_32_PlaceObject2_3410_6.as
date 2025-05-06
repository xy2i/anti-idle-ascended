//! status=pending
onClipEvent(load){
   timeLeft = 150;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft -= 30;
   }
   if(_root.worstMoon == true)
   {
      timeLeft -= 45;
   }
   if(_root.apocalypse == true)
   {
      timeLeft -= 15;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft = 120;
   }
   if(_root.raidDiff == 1)
   {
      timeLeft = 30;
   }
   autoKick = false;
   destination = 32;
}



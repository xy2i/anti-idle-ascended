//! status=pending
onClipEvent(load){
   timeLeft = 45;
   if(_root.raidDiff == 1)
   {
      timeLeft = 20;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft = 75;
   }
   autoKick = false;
   destination = 32;
}



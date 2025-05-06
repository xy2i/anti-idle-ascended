//! status=pending
onClipEvent(load){
   timeLeft = 40;
   if(_root.raidDiff == 1)
   {
      timeLeft = 25;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft = 65;
   }
   autoKick = false;
   destination = 32;
}



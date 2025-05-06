//! status=pending
onClipEvent(load){
   timeLeft = 5;
   autoKick = false;
   destination = 33 + random(6);
   if(_root.raidDiff == 1)
   {
      if(Math.random() < 0.25)
      {
         destination = 36;
      }
      if(Math.random() < _parent.roomCount * 0.3)
      {
         destination = 39;
      }
   }
   else if(_root.raidDiff == 2)
   {
      if(Math.random() < _parent.roomCount * 0.15)
      {
         destination = 39;
      }
   }
   else if(_root.raidDiff == 3)
   {
      if(Math.random() < 0.25)
      {
         destination = 36;
      }
      if(Math.random() < _parent.roomCount * 0.15 - 0.5)
      {
         destination = 39;
      }
   }
}



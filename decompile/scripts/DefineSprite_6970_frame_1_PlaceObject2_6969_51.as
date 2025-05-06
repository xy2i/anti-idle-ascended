//! status=pending
onClipEvent(enterFrame){
   duration += 1;
   if(duration <= 50)
   {
      _alpha = _alpha + 2;
   }
   if(duration >= 250)
   {
      _alpha = _alpha - 2;
   }
   if(duration == 300)
   {
      reset();
   }
}


onClipEvent(load){
   function reset()
   {
      _alpha = 0;
      _X = 500 + Math.random() * 4500;
      _Y = -20;
      if(Math.random() < 0.3)
      {
         _Y = -90;
      }
      duration = 0;
      selectItem = "";
      itemID = random(5) + 1;
      if(itemID == 1)
      {
         selectItem = "Speed Boost";
      }
      if(itemID == 2)
      {
         selectItem = "Energy Drain";
      }
      if(itemID == 3)
      {
         selectItem = "Slow";
      }
      if(itemID == 4)
      {
         selectItem = "Stun";
      }
      if(itemID == 5)
      {
         selectItem = "Darkness";
      }
   }
   reset();
}



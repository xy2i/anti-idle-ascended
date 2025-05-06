//! status=pending
onClipEvent(load){
   timeLeft = 110;
   if(_root.worstMoon == true)
   {
      timeLeft += 20;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 5;
   }
   autoKick = true;
   destination = 69;
}



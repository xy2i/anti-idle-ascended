//! status=pending
onClipEvent(enterFrame){
   if(_root.save.petExist == 1 && _root.save.petFullness <= 0 && _root.save.petHealth <= 150)
   {
      flashing = true;
   }
   else if(_alpha == 0)
   {
      flashing = false;
   }
   if(flashing == true)
   {
      time += 1;
      if(time > 80)
      {
         _alpha = 100;
      }
      if(time > 160)
      {
         _alpha = 0;
         time = 0;
      }
   }
}


onClipEvent(load){
   _alpha = 0;
   flashing = false;
   time = 0;
}



//! status=pending
onClipEvent(enterFrame){
   alt = !alt;
   if(alt == true)
   {
      checkLoc();
   }
}


onClipEvent(load){
   function checkLoc()
   {
      _X = -25;
      if(_root.save.progModuleScroll == 0)
      {
         _X = 15;
      }
      if(_root.save.progModuleScroll == 1)
      {
         _X = -5;
      }
      if(_root.save.progModuleScroll == 69)
      {
         _X = -45;
      }
      if(_root.save.progModuleScroll == 70)
      {
         _X = -65;
      }
   }
   alt = false;
   checkLoc();
}



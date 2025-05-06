//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      fr = 1;
      if(_root.save.petFullness <= 30 || _root.save.petHealth <= 30)
      {
         fr = 2;
      }
      if(_root.save.petFullness <= 0)
      {
         fr = 3;
      }
      if(_root.save.pam == true)
      {
         fr = 4;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   checkFrame();
}



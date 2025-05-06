//! status=pending
onClipEvent(enterFrame){
   if(_root.save.disableManaEffect == true)
   {
      if(_currentframe != 2)
      {
         gotoAndStop(2);
      }
   }
   else if(_currentframe != 1)
   {
      gotoAndStop(1);
   }
}



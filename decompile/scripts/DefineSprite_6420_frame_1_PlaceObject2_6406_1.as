//! status=pending
onClipEvent(enterFrame){
   if(Key.isDown(16) != _root.save.arcadeConfig7)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}



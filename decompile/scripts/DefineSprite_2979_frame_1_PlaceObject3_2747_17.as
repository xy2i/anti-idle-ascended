//! status=pending
onClipEvent(enterFrame){
   if(_root.save.fishRodUnlock[5] == 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}



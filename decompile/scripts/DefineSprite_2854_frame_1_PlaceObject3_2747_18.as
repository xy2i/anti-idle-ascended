//! status=pending
onClipEvent(enterFrame){
   if(_root.save.featureManualSprayer == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}



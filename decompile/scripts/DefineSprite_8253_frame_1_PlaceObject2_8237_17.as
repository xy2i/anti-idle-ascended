//! status=pending
onClipEvent(enterFrame){
   if(_root.save.featureManualSprayer == true && _root.sprayCooldown1 <= 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



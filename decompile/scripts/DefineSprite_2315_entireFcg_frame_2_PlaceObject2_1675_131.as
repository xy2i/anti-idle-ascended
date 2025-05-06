//! status=pending
onClipEvent(enterFrame){
   alphaX = _root.fcgCooldown * 100;
   if(alphaX > 100)
   {
      alphaX = 100;
   }
   if(alphaX < 0)
   {
      alphaX = 0;
   }
   _alpha = alphaX;
}


onClipEvent(load){
   _alpha = 0;
}



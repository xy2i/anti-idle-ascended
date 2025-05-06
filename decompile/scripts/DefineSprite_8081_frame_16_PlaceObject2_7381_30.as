//! status=pending
onClipEvent(enterFrame){
   if(alphaX > 0)
   {
      alphaX -= 1;
   }
   _alpha = Math.min(alphaX,100);
}


onClipEvent(load){
   alphaX = 0;
   _alpha = 0;
}



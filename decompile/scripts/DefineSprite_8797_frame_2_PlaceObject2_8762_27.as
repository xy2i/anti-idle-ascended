//! status=pending
onClipEvent(enterFrame){
   if(_parent.b2 == true)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(2);
   }
}



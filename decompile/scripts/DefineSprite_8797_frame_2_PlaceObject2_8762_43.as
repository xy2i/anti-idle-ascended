//! status=pending
onClipEvent(enterFrame){
   if(_parent.b10 == true)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(2);
   }
}



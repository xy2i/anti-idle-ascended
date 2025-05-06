//! status=pending
onClipEvent(enterFrame){
   if(_parent.b1 == true)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(2);
   }
}



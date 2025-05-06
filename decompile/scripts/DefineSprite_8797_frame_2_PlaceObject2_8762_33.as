//! status=pending
onClipEvent(enterFrame){
   if(_parent.b5 == true)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(2);
   }
}



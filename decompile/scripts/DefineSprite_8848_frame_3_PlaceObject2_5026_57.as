//! status=pending
on(release){
   _parent.bugType = 10;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 10)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



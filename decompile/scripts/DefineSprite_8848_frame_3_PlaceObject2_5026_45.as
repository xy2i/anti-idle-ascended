//! status=pending
on(release){
   _parent.bugType = 6;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



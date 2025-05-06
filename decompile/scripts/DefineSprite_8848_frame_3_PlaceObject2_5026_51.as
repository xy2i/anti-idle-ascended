//! status=pending
on(release){
   _parent.bugType = 8;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 8)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



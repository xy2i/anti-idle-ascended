//! status=pending
on(release){
   _parent.bugType = 1;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



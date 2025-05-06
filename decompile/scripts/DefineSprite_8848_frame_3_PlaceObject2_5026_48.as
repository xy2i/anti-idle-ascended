//! status=pending
on(release){
   _parent.bugType = 7;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 7)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



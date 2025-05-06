//! status=pending
on(release){
   _parent.bugType = 4;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



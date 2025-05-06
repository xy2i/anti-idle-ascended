//! status=pending
on(release){
   _parent.bugType = 9;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 9)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



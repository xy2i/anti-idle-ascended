//! status=pending
on(release){
   _parent.bugType = 5;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 5)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   _parent.bugType = 2;
}


onClipEvent(enterFrame){
   if(_parent.bugType == 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
onClipEvent(enterFrame){
   if(_parent.bugType == 2 || _parent.bugType == 10)
   {
      gotoAndStop(1);
   }
   else
   {
      _parent.reproduce = 0;
      gotoAndStop(2);
   }
}


onClipEvent(load){
   gotoAndStop(2);
}



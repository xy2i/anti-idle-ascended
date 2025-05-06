//! status=pending
on(release){
   _parent._parent.reproduce = 1;
}


onClipEvent(enterFrame){
   if(_parent._parent.reproduce == 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



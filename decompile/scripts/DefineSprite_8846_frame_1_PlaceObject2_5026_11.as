//! status=pending
on(release){
   _parent._parent.reproduce = 4;
}


onClipEvent(enterFrame){
   if(_parent._parent.reproduce == 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



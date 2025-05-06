//! status=pending
on(release){
   _parent._parent.reproduce = 3;
}


onClipEvent(enterFrame){
   if(_parent._parent.reproduce == 3)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



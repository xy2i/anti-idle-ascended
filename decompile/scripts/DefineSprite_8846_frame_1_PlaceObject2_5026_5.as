//! status=pending
on(release){
   _parent._parent.reproduce = 2;
}


onClipEvent(enterFrame){
   if(_parent._parent.reproduce == 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



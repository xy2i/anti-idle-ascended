//! status=pending
on(release){
   if(Key.isDown(16))
   {
      _parent.gotoAndStop(2);
   }
   else
   {
      _parent._parent.gotoAndStop(1);
   }
}



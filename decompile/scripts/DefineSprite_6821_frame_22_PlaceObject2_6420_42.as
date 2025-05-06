//! status=pending
onClipEvent(enterFrame){
   if(Key.isDown(16) == _root.save.arcadeConfig7)
   {
      _X = Math.round(_root.cursor._x - 10);
      _Y = Math.round(_root.cursor._y - 80);
   }
   if(_X < 1)
   {
      _X = 1;
   }
   else if(_X > 499)
   {
      _X = 499;
   }
   if(_Y < 1)
   {
      _Y = 1;
   }
   if(_Y > 349)
   {
      _Y = 349;
   }
   if(_root.arcadeLife == 1)
   {
      fr = 1;
   }
   else if(_root.arcadeInvincibility > 0)
   {
      _root.arcadeInvincibility -= 1 / _root.fps;
      fr = 2;
   }
   else
   {
      fr = 3;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   _X = 250;
   _Y = 175;
}



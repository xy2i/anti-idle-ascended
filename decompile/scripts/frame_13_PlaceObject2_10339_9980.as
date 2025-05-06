//! status=pending
onClipEvent(enterFrame){
   if(_root.house._currentframe != 10 && _root.house._currentframe != 6)
   {
      _Y = 80;
   }
   else
   {
      _Y = 50;
   }
   _X = _X + (targetX - _X) / 5;
   if(targetX <= -600 && _X < -500)
   {
      gotoAndStop(1);
   }
   if(targetX > -500)
   {
      count += 1;
      if(count > 200)
      {
         count = 0;
         targetX = -600;
      }
   }
}


onClipEvent(load){
   targetX = -600;
   count = 0;
}



//! status=pending
onClipEvent(enterFrame){
   xDist = _root._xmouse - _X;
   yDist = _root._ymouse - _Y;
   if(xDist != 0 || yDist != 0)
   {
      _X = _X + Math.round(xDist / 1.5);
      _Y = _Y + Math.round(yDist / 1.5);
   }
   if(_X < 0)
   {
      _X = 0;
   }
   if(_X > 650)
   {
      _X = 650;
   }
   if(_Y < 0)
   {
      _Y = 0;
   }
   if(_Y > 650)
   {
      _Y = 650;
   }
}


onClipEvent(load){
   _xscale = 1;
   _yscale = 1;
   _alpha = 0;
}



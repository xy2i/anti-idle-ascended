//! status=pending
onClipEvent(enterFrame){
   _Y = _Y - yspeed;
   yspeed *= 0.8;
   if(_Y > 0)
   {
      _Y = 0;
   }
   if(_Y < 325 - _height)
   {
      _Y = 325 - _height;
   }
}


onClipEvent(load){
   yspeed = 0;
}



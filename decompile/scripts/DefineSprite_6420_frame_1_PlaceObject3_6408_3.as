//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeShieldTime > 0)
   {
      if(_currentframe != 1)
      {
         gotoAndStop(1);
      }
      _rotation = _rotation + 1440 / _root.fps;
      _alpha = _root.arcadeShieldTime * 200;
   }
   else if(_currentframe != 2)
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   gotoAndStop(2);
}



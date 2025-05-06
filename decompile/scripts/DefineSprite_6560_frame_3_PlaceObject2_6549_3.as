//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arcadeDifficulty[5] == 3)
   {
      _alpha = _alpha + 50 / _root.fps;
   }
}


onClipEvent(load){
   _alpha = 0;
}



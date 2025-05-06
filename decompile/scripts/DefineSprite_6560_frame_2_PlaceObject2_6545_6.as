//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arcadeDifficulty[5] == 4)
   {
      _alpha = _alpha + 100 / _root.fps;
   }
}


onClipEvent(load){
   _alpha = 0;
}



//! status=pending
onClipEvent(load){
   if(_root.save.arcadeDifficulty[4] >= 3)
   {
      gotoAndStop(4 + random(3));
   }
}



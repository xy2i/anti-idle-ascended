//! status=pending
onClipEvent(load){
   if(_root.save.arcadeDifficulty[4] >= 3)
   {
      gotoAndStop(1 + random(3));
   }
}



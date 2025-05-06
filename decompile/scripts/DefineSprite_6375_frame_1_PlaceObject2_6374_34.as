//! status=pending
onClipEvent(load){
   if(_root.save.arcadeDifficulty[1] != 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



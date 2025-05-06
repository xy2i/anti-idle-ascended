//! status=pending
on(release){
   if(_root.save.arcadeDifficulty[4] > 1)
   {
      _root.save.arcadeDifficulty[4] -= 1;
   }
}


onClipEvent(enterFrame){
   if(_root.save.arcadeDifficulty[4] > 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.arcadeDifficulty[4] > 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



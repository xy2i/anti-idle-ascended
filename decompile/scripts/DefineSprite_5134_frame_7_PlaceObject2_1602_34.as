//! status=pending
on(release){
   if(_root.save.battleDaily != true)
   {
      _root.save.arenaPixel += _parent.dailyPixel;
      _root.save.battleDaily = true;
   }
}


onClipEvent(enterFrame){
   if(_root.save.battleDaily != true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



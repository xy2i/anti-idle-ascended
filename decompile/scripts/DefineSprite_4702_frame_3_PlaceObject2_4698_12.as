//! status=pending
onClipEvent(enterFrame){
   if(_root.manaPower != true && _root.save.arenaFury >= 25)
   {
      targetAlpha = 100;
   }
   else
   {
      targetAlpha = 0;
   }
   _alpha = _alpha + Math.round((targetAlpha - _alpha) / 2);
}


onClipEvent(load){
   _alpha = 0;
   targetAlpha = 0;
}



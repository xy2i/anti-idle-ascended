//! status=pending
onClipEvent(enterFrame){
   targetX = _root.fishDest - 10;
   actualX += (targetX - actualX) / 2;
   _X = actualX;
   if(_root.save.fishRod == 4 || _root.save.fishStreak >= 250)
   {
      _alpha = 100 - _parent.fishTriangle._alpha;
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   actualX = 90;
}



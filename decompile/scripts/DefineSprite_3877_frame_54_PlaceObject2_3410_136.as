//! status=pending
onClipEvent(enterFrame){
   _root.dungeonTimeLeft = Math.ceil(timeLeft);
}


onClipEvent(load){
   timeLeft = 1805;
   if(_root.dungeonDiff == 3)
   {
      timeLeft = 3605;
   }
   autoKick = true;
   destination = 51;
}



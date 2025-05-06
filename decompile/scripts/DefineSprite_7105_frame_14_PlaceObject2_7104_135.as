//! status=pending
onClipEvent(enterFrame){
   targetX = 10 + _root.save.stadiumHat * 40;
   _X = _X + (targetX - _X) / 2;
}


onClipEvent(load){
   _X = 10 + _root.save.stadiumHat * 40;
}



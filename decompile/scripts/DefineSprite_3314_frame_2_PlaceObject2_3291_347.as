//! status=pending
onClipEvent(enterFrame){
   _X = _X + (targetX - _X) / 3;
}


onClipEvent(load){
   targetX = -510;
}



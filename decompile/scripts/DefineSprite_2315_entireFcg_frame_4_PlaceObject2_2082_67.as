//! status=pending
onClipEvent(enterFrame){
   diff = targetx - _X;
   _X = _X + diff / 20;
}


onClipEvent(load){
   targetx = 38.5;
}



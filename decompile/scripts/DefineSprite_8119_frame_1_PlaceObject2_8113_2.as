//! status=pending
onClipEvent(enterFrame){
   fakexscale = _parent.achPercent * 5 / 8;
   _xscale = _xscale + (fakexscale - _xscale) / 2;
}


onClipEvent(load){
   _xscale = 0;
}



//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.getBytesLoaded() / _root.getBytesTotal() * 100;
   _xscale = _xscale + (targetScale - _xscale) / 5;
}


onClipEvent(load){
   _xscale = 0;
}



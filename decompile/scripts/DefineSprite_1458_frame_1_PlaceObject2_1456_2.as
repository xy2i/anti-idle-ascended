//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.fcgExp / _parent._parent.reqExp * 100;
   _xscale = _xscale + (targetScale - _xscale) / 5;
}


onClipEvent(load){
   _xscale = 0;
}



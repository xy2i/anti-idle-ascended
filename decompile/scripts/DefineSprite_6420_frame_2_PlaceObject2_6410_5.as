//! status=pending
onClipEvent(enterFrame){
   _xscale = _root.arcadeInvincibility * 100;
   _yscale = _root.arcadeInvincibility * 100;
}


onClipEvent(load){
   _xscale = 0;
   _yscale = 0;
}



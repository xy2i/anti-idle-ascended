//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.arenaExp / _root.arenaReqExp * 100 * 28 / 15;
   maxScale = 186.66666666666666;
}


onClipEvent(load){
   _xscale = 0;
}



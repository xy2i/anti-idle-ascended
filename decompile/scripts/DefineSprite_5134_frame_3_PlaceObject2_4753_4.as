//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.robaconExp / _root.robaconReqExp * 100 * 28 / 15;
   maxScale = 186.66666666666666;
}


onClipEvent(load){
   _xscale = 0;
}



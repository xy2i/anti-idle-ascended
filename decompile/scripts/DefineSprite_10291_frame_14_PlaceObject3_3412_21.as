//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.petFullness / _parent.petMax * 500 / 3;
}


onClipEvent(load){
   maxScale = 166.66666666666666;
}



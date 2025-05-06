//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.arenaHealth / _root.maxHealth * 100;
}


onClipEvent(load){
   _xscale = 0;
}



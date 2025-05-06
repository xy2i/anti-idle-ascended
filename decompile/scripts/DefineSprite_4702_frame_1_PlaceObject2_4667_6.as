//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.save.arenaMana / _root.maxMana * 100;
}


onClipEvent(load){
   _xscale = 0;
}



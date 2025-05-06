//! status=pending
onClipEvent(enterFrame){
   targetScale = (150 - _root.areaRevengeRage) * 2 / 3;
   _xscale = _xscale + (targetScale - _xscale) / 1.5;
}



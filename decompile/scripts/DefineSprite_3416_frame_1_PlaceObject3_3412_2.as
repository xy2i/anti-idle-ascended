//! status=pending
onClipEvent(enterFrame){
   targetScale = _parent.parLeft / _parent.parThis * 100 * 28 / 15;
   if(_parent.parThis == Infinity)
   {
      targetScale = 186.66666666666666;
   }
   maxScale = 186.66666666666666;
}


onClipEvent(load){
   _xscale = 0;
}



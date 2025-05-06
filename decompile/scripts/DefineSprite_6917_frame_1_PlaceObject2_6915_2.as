//! status=pending
onClipEvent(enterFrame){
   _xscale = _parent._parent.health;
   if(_parent._parent.health == undefined)
   {
      _parent._visible = false;
   }
}



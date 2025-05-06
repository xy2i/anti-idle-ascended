//! status=pending
onClipEvent(enterFrame){
   fr = _root.save.gardenTrees[_parent._parent.slot] + 1;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}



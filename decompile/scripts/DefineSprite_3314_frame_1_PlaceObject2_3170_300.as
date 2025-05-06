//! status=pending
onClipEvent(enterFrame){
   targetLoc = _root.treeToPlant * 30 - 20;
   _X = _X + (targetLoc - _X) / 2;
}



//! status=pending
onClipEvent(enterFrame){
   targetX = 125 - this["stadiumEnemy" + _root.betTarget]._x;
   _X = _X + (targetX - _X) / 5;
}



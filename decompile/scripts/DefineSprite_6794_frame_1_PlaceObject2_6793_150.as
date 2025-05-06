//! status=pending
onClipEvent(enterFrame){
   targetX = _root.monsterTargetX;
   targetY = _root.monsterTargetY;
   _X = _X + (targetX - _X) / (4.5 * _root.fps / 40);
   _Y = _Y + (targetY - _Y) / (4.5 * _root.fps / 40);
   _root.monsterActualX = _X;
   _root.monsterActualY = _Y;
}


onClipEvent(load){
   targetX = 260;
   targetY = 120;
}



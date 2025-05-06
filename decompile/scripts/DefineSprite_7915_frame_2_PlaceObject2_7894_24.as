//! status=pending
onClipEvent(enterFrame){
   if(_parent.curLine >= 4)
   {
      targetX = 10 + (_parent.charTyped + _parent.curLength) / _parent.timeElapsed * 48;
   }
   _X = _X + (targetX - _X) / 5;
}


onClipEvent(load){
   _X = 10;
   targetX = 10;
}



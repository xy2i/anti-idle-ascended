//! status=pending
onClipEvent(enterFrame){
   _X = _X + (targetX - _X) / 2;
   if(_root._xmouse <= 10 || Key.isDown(17))
   {
      targetX = 390;
   }
   else
   {
      targetX = 0;
   }
}


onClipEvent(load){
   _X = 0;
   targetX = 0;
   logText.text = "";
}



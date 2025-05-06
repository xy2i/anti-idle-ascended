//! status=pending
onClipEvent(enterFrame){
   if(Math.abs(targetRot - _rotation) > 0.05)
   {
      _rotation = _rotation + (targetRot - _rotation) / 10;
   }
}


onClipEvent(load){
   function resetRot()
   {
      targetRot = Math.random() * 3 + 3;
      if(Math.random() < 0.5)
      {
         targetRot *= -1;
      }
      if(_root.save.buttonPress == 0)
      {
         targetRot = 0;
      }
   }
   resetRot();
}



//! status=pending
onClipEvent(enterFrame){
   tempRot += 360 / _root.fps;
   if(tempRot > 360)
   {
      tempRot -= 360;
   }
   if(tempTime != Math.floor(_root.arcadeTimeLeft))
   {
      tempTime = Math.floor(_root.arcadeTimeLeft);
      _parent.mathTimeText.text = Math.floor(_root.arcadeTimeLeft);
      tempRot = 0;
      if(tempTime < 10)
      {
         _parent._xscale = 140;
         _parent._yscale = 140;
      }
      else
      {
         _parent._xscale = 120;
         _parent._yscale = 120;
      }
   }
   _rotation = tempRot;
}


onClipEvent(load){
   tempRot = 0;
   tempTime = -1;
}



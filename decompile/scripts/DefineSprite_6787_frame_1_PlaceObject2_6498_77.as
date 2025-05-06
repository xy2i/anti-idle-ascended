//! status=pending
onClipEvent(enterFrame){
   tempRot += 360 / _root.fps;
   if(tempRot > 360)
   {
      tempRot -= 360;
   }
   _rotation = tempRot;
}


onClipEvent(load){
   tempRot = 0;
}



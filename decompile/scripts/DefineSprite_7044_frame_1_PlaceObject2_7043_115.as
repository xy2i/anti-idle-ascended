//! status=pending
onClipEvent(enterFrame){
   defScale += defMove / 2;
   if(defScale > 110)
   {
      defMove = -1;
   }
   if(defScale < 100)
   {
      defMove = 1;
   }
   _xscale = defScale;
   _yscale = defScale;
}


onClipEvent(load){
   _X = 6000;
   defScale = 100;
   defMove = 1;
}



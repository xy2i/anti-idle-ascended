//! status=pending
onClipEvent(enterFrame){
   _rotation = _rotation + 3;
   _xscale = _xscale + scaleDir;
   _yscale = _yscale + scaleDir;
   if(_xscale > 120)
   {
      scaleDir = -1;
   }
   else if(_xscale < 100)
   {
      scaleDir = 1;
   }
}


onClipEvent(load){
   scaleDir = 1;
}



//! status=pending
onClipEvent(enterFrame){
   xloc = _parent._parent.field.stadiumEnemy2._x * 330 / 6000;
   if(xloc < 0)
   {
      xloc = 0;
   }
   if(xloc > 330)
   {
      xloc = 330;
   }
   _X = xloc;
}



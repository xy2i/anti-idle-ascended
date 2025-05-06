//! status=pending
onClipEvent(enterFrame){
   if(del < 2500)
   {
      del += 40 / _root.fps;
   }
   if(del > 2400)
   {
      _alpha = del - 2400;
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true))
      {
         _root.gainWhiteCoin(1);
         del = _root.arcadeMultiplier * 50 + 900;
         if(del > 1900)
         {
            del = 1900;
         }
      }
   }
   else
   {
      _alpha = 0;
      _X = 0 + Math.random() * 150 - Math.random() * 150;
      _Y = 0 + Math.random() * 150 - Math.random() * 150;
   }
}


onClipEvent(load){
   del = 0;
   _alpha = 0;
}



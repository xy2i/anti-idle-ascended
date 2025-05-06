//! status=pending
onClipEvent(enterFrame){
   if(del < 2000)
   {
      del += 1;
   }
   if(del > 1900)
   {
      _alpha = del - 1900;
      if(this.hitTest(_parent.ball))
      {
         _root.gainWhiteCoin(1);
         del = _root.arcadeDifficulty * 50 + 500;
         if(del > 1500)
         {
            del = 1500;
         }
      }
   }
   else
   {
      _alpha = 0;
      _X = 100 + random(300);
   }
}


onClipEvent(load){
   del = 0;
   _alpha = 0;
   _X = 100 + random(300);
}



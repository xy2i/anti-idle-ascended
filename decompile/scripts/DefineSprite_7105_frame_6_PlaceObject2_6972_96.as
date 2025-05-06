//! status=pending
onClipEvent(enterFrame){
   targetAlpha = _parent.field.stadiumHero.darkDur * 200;
   if(targetAlpha > 100)
   {
      targetAlpha = 100;
   }
   if(targetAlpha < 0)
   {
      targetAlpha = 0;
   }
   _alpha = targetAlpha;
}


onClipEvent(load){
   _alpha = 0;
}



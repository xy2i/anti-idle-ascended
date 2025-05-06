//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 40)
   {
      del = 0;
      flashLeft -= 1;
      _alpha = 100;
   }
   if(_alpha > 0)
   {
      _alpha = _alpha - 10;
   }
   if(flashLeft == 0)
   {
      _parent.play();
   }
}


onClipEvent(load){
   flashLeft = 5;
   del = 0;
   _alpha = 0;
}



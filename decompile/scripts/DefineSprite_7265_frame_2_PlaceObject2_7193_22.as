//! status=pending
onClipEvent(enterFrame){
   fr += 1;
   if(fr == 2 || fr == 3)
   {
      _alpha = _alpha - 50;
   }
}


onClipEvent(load){
   _alpha = 100;
   fr = 0;
}



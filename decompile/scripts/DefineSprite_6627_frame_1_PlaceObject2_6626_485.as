//! status=pending
onClipEvent(enterFrame){
   if(alp >= 0)
   {
      _alpha = alp;
   }
   alp -= 2;
}


onClipEvent(load){
   alp = 0;
   _alpha = 0;
}



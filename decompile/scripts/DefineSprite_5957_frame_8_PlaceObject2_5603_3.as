//! status=pending
onClipEvent(enterFrame){
   del += 2;
   if(del <= 100)
   {
      _alpha = del;
   }
   else if(del < 200)
   {
      _alpha = 200 - del;
   }
   else
   {
      _alpha = 0;
   }
}


onClipEvent(load){
   _alpha = 0;
   del = 0;
}



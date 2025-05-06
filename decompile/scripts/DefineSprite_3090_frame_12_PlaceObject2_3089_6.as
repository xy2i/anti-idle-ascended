//! status=pending
onClipEvent(enterFrame){
   alp += dir;
   if(alp >= 50)
   {
      dir = -1;
   }
   else if(alp <= 10)
   {
      dir = 1;
   }
   _alpha = alp;
}


onClipEvent(load){
   alp = 30;
   dir = 1;
}



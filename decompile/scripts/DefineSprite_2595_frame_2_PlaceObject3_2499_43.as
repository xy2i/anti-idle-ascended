//! status=pending
on(release,keyPress "<Left>"){
   if(_parent.auView > 0)
   {
      _parent.auView -= 1;
   }
}


onClipEvent(enterFrame){
   if(_parent.auView > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 0;
}



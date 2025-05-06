//! status=pending
on(release,keyPress "<Left>"){
   if(_parent.auView > 1)
   {
      _parent.auView -= 1;
      _parent.pop1.targetMove += 650;
      _parent.pop2.targetMove += 650;
   }
}


onClipEvent(enterFrame){
   if(_parent.auView > 1)
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



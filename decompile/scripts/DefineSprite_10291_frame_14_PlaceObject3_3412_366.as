//! status=pending
onClipEvent(enterFrame){
   if(_root.save.petMana >= _parent.petMaxB)
   {
      _alpha = 40;
   }
   else
   {
      _alpha = 0;
   }
}


onClipEvent(load){
   maxScale = 166.66666666666666;
   targetScale = 166.66666666666666;
   _alpha = 0;
}



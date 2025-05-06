//! status=pending
onClipEvent(enterFrame){
   targetScale = _parent.questCount / _parent.questNeed * 250;
   if(targetScale > 250)
   {
      targetScale = 250;
   }
   if(_parent.questCount >= _parent.questNeed)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



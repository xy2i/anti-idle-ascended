//! status=pending
onClipEvent(enterFrame){
   if(_root.save.fcgCurDiff >= 6 && _root.save.fcgCurDiff <= 11)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



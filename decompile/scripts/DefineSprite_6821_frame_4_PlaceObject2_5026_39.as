//! status=pending
on(release){
   if(_root.save.arcadeConfig7 != true)
   {
      _root.save.arcadeConfig7 = true;
   }
   else
   {
      _root.save.arcadeConfig7 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig7 + 1);
}



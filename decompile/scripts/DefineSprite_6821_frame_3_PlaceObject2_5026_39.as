//! status=pending
on(release){
   if(_root.save.arcadeConfig4 != true)
   {
      _root.save.arcadeConfig4 = true;
   }
   else
   {
      _root.save.arcadeConfig4 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig4 + 1);
}



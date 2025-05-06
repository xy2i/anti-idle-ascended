//! status=pending
on(release){
   if(_root.save.arcadeConfig2 != true)
   {
      _root.save.arcadeConfig2 = true;
   }
   else
   {
      _root.save.arcadeConfig2 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig2 + 1);
}



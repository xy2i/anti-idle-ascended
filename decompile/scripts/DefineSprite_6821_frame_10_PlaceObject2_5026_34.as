//! status=pending
on(release){
   if(_root.save.arcadeConfig6 != true)
   {
      _root.save.arcadeConfig6 = true;
   }
   else
   {
      _root.save.arcadeConfig6 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig6 + 1);
}



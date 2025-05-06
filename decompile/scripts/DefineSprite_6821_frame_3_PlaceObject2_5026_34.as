//! status=pending
on(release){
   if(_root.save.arcadeConfig1 != true)
   {
      _root.save.arcadeConfig1 = true;
   }
   else
   {
      _root.save.arcadeConfig1 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig1 + 1);
}



//! status=pending
on(release){
   if(_root.save.arcadeConfig5 != true)
   {
      _root.save.arcadeConfig5 = true;
   }
   else
   {
      _root.save.arcadeConfig5 = false;
   }
}


onClipEvent(enterFrame){
   gotoAndStop(_root.save.arcadeConfig5 + 1);
}



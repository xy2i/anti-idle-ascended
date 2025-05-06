//! status=pending
on(release){
   if(_root.save.visibleRing != true)
   {
      _root.save.visibleRing = true;
   }
   else
   {
      _root.save.visibleRing = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.visibleRing == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



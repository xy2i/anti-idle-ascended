//! status=pending
on(release){
   if(_root.save.vegetarianMode != true)
   {
      _root.save.vegetarianMode = true;
   }
   else
   {
      _root.save.vegetarianMode = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.vegetarianMode == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



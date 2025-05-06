//! status=pending
on(release){
   if(_root.save.filterPref8c != true)
   {
      _root.save.filterPref8c = true;
   }
   else
   {
      _root.save.filterPref8c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref8c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   if(_root.save.filterPref4c != true)
   {
      _root.save.filterPref4c = true;
      _root.save.filterPref3c = false;
   }
   else
   {
      _root.save.filterPref4c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref4c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



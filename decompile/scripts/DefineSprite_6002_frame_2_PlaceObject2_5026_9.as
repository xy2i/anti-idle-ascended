//! status=pending
on(release){
   if(_root.save.filterPref3c != true)
   {
      _root.save.filterPref3c = true;
      _root.save.filterPref4c = false;
   }
   else
   {
      _root.save.filterPref3c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref3c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



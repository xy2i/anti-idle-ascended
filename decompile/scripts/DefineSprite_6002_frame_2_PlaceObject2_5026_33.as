//! status=pending
on(release){
   if(_root.save.filterPref11c != true)
   {
      _root.save.filterPref11c = true;
   }
   else
   {
      _root.save.filterPref11c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref11c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



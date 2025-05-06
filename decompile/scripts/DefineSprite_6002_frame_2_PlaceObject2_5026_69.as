//! status=pending
on(release){
   if(_root.save.filterPref12c != true)
   {
      _root.save.filterPref12c = true;
   }
   else
   {
      _root.save.filterPref12c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref12c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



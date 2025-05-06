//! status=pending
on(release){
   if(_root.save.filterPref10c != true)
   {
      _root.save.filterPref10c = true;
   }
   else
   {
      _root.save.filterPref10c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref10c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   if(_root.save.filterPref15c != true)
   {
      _root.save.filterPref15c = true;
      _root.save.filterPref14c = false;
   }
   else
   {
      _root.save.filterPref15c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref15c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



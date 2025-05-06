//! status=pending
on(release){
   if(_root.save.filterPref9c != true)
   {
      _root.save.filterPref9c = true;
   }
   else
   {
      _root.save.filterPref9c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref9c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



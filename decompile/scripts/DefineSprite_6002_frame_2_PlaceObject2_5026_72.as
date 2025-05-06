//! status=pending
on(release){
   if(_root.save.filterPref13c != true)
   {
      _root.save.filterPref13c = true;
   }
   else
   {
      _root.save.filterPref13c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref13c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



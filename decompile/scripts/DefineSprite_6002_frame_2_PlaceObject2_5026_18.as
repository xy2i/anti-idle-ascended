//! status=pending
on(release){
   if(_root.save.filterPref6c != true)
   {
      _root.save.filterPref6c = true;
      _root.save.filterPref1c = true;
      _root.save.filterPref2c = false;
   }
   else
   {
      _root.save.filterPref6c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref6c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



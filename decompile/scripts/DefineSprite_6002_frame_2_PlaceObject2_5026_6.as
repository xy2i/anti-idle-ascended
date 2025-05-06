//! status=pending
on(release){
   if(_root.save.filterPref2c != true)
   {
      _root.save.filterPref2c = true;
      _root.save.filterPref1c = false;
      _root.save.filterPref5c = false;
      _root.save.filterPref6c = false;
   }
   else
   {
      _root.save.filterPref2c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref2c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



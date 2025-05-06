//! status=pending
on(release){
   if(_root.save.filterPref7c != true)
   {
      _root.save.filterPref7c = true;
   }
   else
   {
      _root.save.filterPref7c = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.filterPref7c == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   if(_root.save.showProgBar != true)
   {
      _root.save.showProgBar = true;
   }
   else
   {
      _root.save.showProgBar = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.showProgBar == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



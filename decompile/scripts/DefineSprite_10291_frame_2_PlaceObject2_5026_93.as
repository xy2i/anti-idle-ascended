//! status=pending
on(release){
   if(_root.save.showBanner != true)
   {
      _root.save.showBanner = true;
   }
   else
   {
      _root.save.showBanner = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.showBanner == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



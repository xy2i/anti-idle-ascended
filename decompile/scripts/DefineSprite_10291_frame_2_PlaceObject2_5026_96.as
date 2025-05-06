//! status=pending
on(release){
   if(_root.save.showGain != true)
   {
      _root.save.showGain = true;
   }
   else
   {
      _root.save.showGain = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.showGain == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



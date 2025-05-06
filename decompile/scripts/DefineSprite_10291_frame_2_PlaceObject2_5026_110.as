//! status=pending
on(release){
   if(_root.save.enableMilestone != true)
   {
      _root.save.enableMilestone = true;
   }
   else
   {
      _root.save.enableMilestone = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.enableMilestone == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   if(_root.save.showRobaconEXP != true)
   {
      _root.save.showRobaconEXP = true;
   }
   else
   {
      _root.save.showRobaconEXP = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.showRobaconEXP == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}



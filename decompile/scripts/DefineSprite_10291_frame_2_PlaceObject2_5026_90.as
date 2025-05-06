//! status=pending
on(release){
   if(_root.save.damageDisplay != true)
   {
      _root.save.damageDisplay = true;
   }
   else
   {
      _root.save.damageDisplay = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.damageDisplay == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



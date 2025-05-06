//! status=pending
on(release){
   if(_root.save.damageFullDisplay != true)
   {
      _root.save.damageFullDisplay = true;
   }
   else
   {
      _root.save.damageFullDisplay = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.damageFullDisplay == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



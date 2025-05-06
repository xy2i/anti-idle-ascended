//! status=pending
on(release){
   if(_root.save.disableManaEffect != true)
   {
      _root.save.disableManaEffect = true;
   }
   else
   {
      _root.save.disableManaEffect = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.disableManaEffect == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



//! status=pending
on(release){
   if(_root.save.bouncyLoot != true)
   {
      _root.save.bouncyLoot = true;
   }
   else
   {
      _root.save.bouncyLoot = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.bouncyLoot == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



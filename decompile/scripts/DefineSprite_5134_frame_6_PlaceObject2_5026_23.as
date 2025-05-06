//! status=pending
on(release){
   if(_root.save.activityLoot != true)
   {
      _root.save.activityLoot = true;
   }
   else
   {
      _root.save.activityLoot = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.activityLoot == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}



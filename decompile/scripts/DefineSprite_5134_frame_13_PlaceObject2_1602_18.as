//! status=pending
on(release){
   if(_root.save.arenaChaosLeft >= 0)
   {
      _root.save.arenaChaosLeft -= 0;
      _root.dungeonDiff = 1;
      _root.house.arena.travel(53);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft >= 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.arenaChaosLeft >= 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



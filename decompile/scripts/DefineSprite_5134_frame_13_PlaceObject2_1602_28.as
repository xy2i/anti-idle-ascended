//! status=pending
on(release){
   if(_root.save.arenaChaosLeft >= 1)
   {
      _root.save.arenaChaosLeft -= 1;
      _root.dungeonDiff = 2;
      _root.house.arena.travel(53);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.arenaChaosLeft >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



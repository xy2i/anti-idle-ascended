//! status=pending
on(release){
   if(_root.save.arenaChaosLeft >= 7 && _root.save.arenaHardcore == true && _root.apocalypse == true)
   {
      _root.save.arenaChaosLeft -= 7;
      _root.dungeonDiff = 3;
      _root.house.arena.travel(53);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft >= 7 && _root.save.arenaHardcore == true && _root.apocalypse == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.arenaChaosLeft >= 7 && _root.save.arenaHardcore == true && _root.apocalypse == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



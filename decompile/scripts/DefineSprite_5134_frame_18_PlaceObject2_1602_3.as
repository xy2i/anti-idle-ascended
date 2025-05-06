//! status=pending
on(release){
   if(_root.save.arenaPrehistoricMega >= 1)
   {
      _root.raidDiff = 1;
      _root.house.arena.travel(31);
      _parent.gotoAndStop(1);
   }
}


onClipEvent(enterFrame){
   if(_root.save.arenaPrehistoricMega >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   if(_root.save.arenaPrehistoricMega >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



//! status=pending
on(release){
   if(_root.save.arenaPyramidEntry > 0 && _root.house.arena.enemy.enemyID == 0)
   {
      _root.save.arenaPyramidEntry -= 1;
      _root.house.arena.travel(20,0);
      _parent.gotoAndStop(1);
   }
}



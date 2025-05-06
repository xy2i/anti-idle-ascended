//! status=pending
on(release){
   if(_root.save.coin >= 250000000000)
   {
      _root.save.coin -= 250000000000;
      _root.areaPract = false;
      _root.house.arena.travel(81);
      _parent.gotoAndStop(1);
   }
}



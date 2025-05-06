//! status=pending
onClipEvent(enterFrame){
   pct = _root.house.arena.enemy.hp / _root.house.arena.enemy.maxhp * 100;
   gotoAndStop(1);
   if(pct < 80)
   {
      gotoAndStop(2);
   }
   if(pct < 60)
   {
      gotoAndStop(3);
   }
   if(pct < 40)
   {
      gotoAndStop(4);
   }
   if(pct < 20)
   {
      gotoAndStop(5);
   }
   if(pct < 5)
   {
      gotoAndStop(6);
   }
}



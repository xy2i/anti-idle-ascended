//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 25;
   }
   else
   {
      if(tCount % 2 == 0)
      {
         req = 60;
      }
      else if(tCount % 3 == 0)
      {
         req = 75;
      }
      else
      {
         req = 110;
      }
      if(_root.house.arena.enemy.hp > 0)
      {
         if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
         {
            del += 1;
         }
      }
      else
      {
         del += 40 / _root.fps;
      }
      if(del > req && _root.save.arenaHealth > 100 && _root.save.arenaZone != 24)
      {
         del = 0;
         tCount += 1;
         if(tCount > 13)
         {
            tCount = 0;
         }
         _alpha = 100;
         if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 43)
         {
            _root.house.arena.takeDamage(Math.ceil(_root.save.arenaHealth * 0.15),"Apocalypse");
         }
         else
         {
            _root.house.arena.takeDamage(Math.ceil(_root.save.arenaHealth * 0.25),"Apocalypse");
         }
      }
   }
}


onClipEvent(load){
   _alpha = 0;
   del = 0;
   tCount = 0;
}



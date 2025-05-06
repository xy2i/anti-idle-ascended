//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      if(Math.random() < 0.01)
      {
         if(_root.house.arena.enemy.lifespan >= 30)
         {
            play();
         }
      }
   }
};

//! status=pending
stop();
_root.house.arena.enemy.immune = true;
onEnterFrame = function()
{
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      if(Math.random() < 0.01)
      {
         play();
      }
   }
};

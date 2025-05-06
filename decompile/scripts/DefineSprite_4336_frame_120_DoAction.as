//! status=pending
stop();
_root.house.arena.enemy.immune = true;
lim = 0;
onEnterFrame = function()
{
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      lim += 1;
      if(Math.random() < 0.02 && lim >= 60 || lim >= 120)
      {
         play();
      }
   }
};

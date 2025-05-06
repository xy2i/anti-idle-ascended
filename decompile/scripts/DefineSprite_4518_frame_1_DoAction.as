//! status=pending
onEnterFrame = function()
{
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      if(_root.house.arena.enemy.lifespan < 30 && _root.house.arena.enemy.hp < _root.house.arena.enemy.maxhp)
      {
         gotoAndPlay(2);
         _root.fightStat2 = "Corrupted Giant Treeman casts Shield and nullifies all damage!";
      }
      if(Math.random() < 0.001 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.9))
      {
         gotoAndPlay(2);
         _root.fightStat2 = "Corrupted Giant Treeman casts Shield and nullifies all damage!";
      }
      else if(Math.random() < 0.001 && _root.arenaZombify <= 2 && _root.arenaPotionBlock <= 5 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.8))
      {
         gotoAndPlay(60);
         _root.fightStat2 = "Corrupted Giant Treeman throws a potion block at you!";
      }
      else if(Math.random() < 0.001 && _root.arenaPotionBlock <= 2 && _root.arenaZombify <= 5 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.7))
      {
         gotoAndPlay(89);
         _root.fightStat2 = "Corrupted Giant Treeman casts Thunder! OW!";
      }
      else if(Math.random() < 0.001 && _root.arenaSoap <= 5 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.6))
      {
         gotoAndPlay(102);
         _root.fightStat2 = "Corrupted Giant Treeman throws SOAP at you!";
      }
      else if(Math.random() < 0.001 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.5))
      {
         gotoAndPlay(131);
         _root.fightStat2 = "Corrupted Giant Treeman heals some HP!";
      }
      else if(Math.random() < 0.001 && _root.arenaSlow <= 5 && _root.house.arena.enemy.hp <= Math.floor(_root.house.arena.enemy.maxhp * 0.4))
      {
         gotoAndPlay(180);
         _root.fightStat2 = "Corrupted Giant Treeman summons an icicle!";
      }
   }
};
if(_root.house.arena._currentframe != 1)
{
   onEnterFrame = null;
}

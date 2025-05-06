//! status=pending
_root.arenaPoison = 30;
_root.arenaWeaken = 30;
_root.arenaSlow = 30;
_root.arenaStun = 3;
if(_root.save.arenaZone == 59)
{
   cgtDmg = 3000000 + _root.save.arenaCorruptWmDifficulty * 600000;
   if(cgtDmg > 18000000)
   {
      cgtDmg = 18000000;
   }
}
else
{
   cgtDmg = 15000000;
}
_root.house.arena.takeDamage(cgtDmg,"Ignore Defense");
_root.arenaCombo = 0;

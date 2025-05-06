//! status=pending
_root.arenaStun = 3;
_root.arenaPotionBlock = 30;
if(_root.save.arenaZone == 59)
{
   cgtDmg = 500000 + _root.save.arenaCorruptWmDifficulty * 1000000;
   if(cgtDmg > 15000000)
   {
      cgtDmg = 15000000;
   }
}
else
{
   cgtDmg = 5000000;
}
_root.house.arena.takeDamage(cgtDmg,"Ignore Defense");
_root.save.arenaMana = 1;
_root.save.arenaSpirit = 0;
_root.arenaCombo = 0;

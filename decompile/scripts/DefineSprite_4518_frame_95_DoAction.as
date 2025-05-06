//! status=pending
_root.save.arenaMana = 0;
_root.save.arenaSpirit = 0;
_root.arenaCombo = 0;
if(_root.save.arenaZone == 59)
{
   cgtDmg = 300000 + _root.save.arenaCorruptWmDifficulty * 600000;
   if(cgtDmg > 9000000)
   {
      cgtDmg = 9000000;
   }
}
else
{
   cgtDmg = 3000000;
}
_root.house.arena.takeDamage(cgtDmg,"Ignore Defense");

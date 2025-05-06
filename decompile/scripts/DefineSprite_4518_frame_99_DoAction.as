//! status=pending
_root.save.arenaMana = 0;
_root.save.arenaSpirit = 0;
_root.arenaCombo = 0;
if(_root.save.arenaZone == 59)
{
   cgtDmg = 400000 + _root.save.arenaCorruptWmDifficulty * 800000;
   if(cgtDmg > 12000000)
   {
      cgtDmg = 12000000;
   }
}
else
{
   cgtDmg = 4000000;
}
_root.house.arena.takeDamage(cgtDmg,"Ignore Defense");

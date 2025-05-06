//! status=pending
if(_root.save.arenaZone == 59)
{
   cgtHeal = 0.01 / (0.5 + _root.save.arenaCorruptWmDifficulty * 0.5);
}
else
{
   cgtHeal = 0.005;
}
_root.house.arena.takeDamage(cgtDmg,"Ignore Defense");
_root.house.arena.enemy.hp += Math.floor((_root.house.arena.enemy.maxhp - _root.house.arena.enemy.hp) * cgtHeal);
if(_root.house.arena.enemy.hp > maxhp)
{
   _root.house.arena.enemy.hp = maxhp;
}
_root.house.arena.enemy.poison = 0;
_root.house.arena.enemy.weaken = 0;
_root.house.arena.enemy.blind = 0;
_root.house.arena.enemy.stun = 0;
_root.house.arena.enemy.slow = 0;

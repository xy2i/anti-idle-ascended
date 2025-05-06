//! status=pending
_root.meleeHit = false;
if(_root.save.arenaZone == 47 && _root.house.arena.enemy.enemyID == 0)
{
   if(_root.doomTowerDel > 0)
   {
      _root.doomTowerDel -= 1;
   }
   else
   {
      _root.doomTowerTaunt += 10;
      if(_root.doomTowerTaunt > 100)
      {
         _root.doomTowerTaunt = 100;
      }
   }
}
if(_root.save.inventoryMaxLevel[_root.save.arenaSubWeapon] == -1)
{
   _root.save.inventoryExpTNL[_root.save.arenaSubWeapon] -= 1;
   if(_root.save.inventoryExpTNL[_root.save.arenaSubWeapon] < 0)
   {
      _root.save.inventoryExpTNL[_root.save.arenaSubWeapon] = 0;
      _root.save.inventoryExpiry[_root.save.arenaSubWeapon] = 0;
      _root.save.inventoryNoLife[_root.save.arenaSubWeapon] = true;
      _root.house.arena.checkStat();
   }
}

//! status=pending
on(release){
   if(_root.house.arena.enemy.enemyID == 0 && _root.save.arenaLevel >= 500 && _root.labCooldown <= 0)
   {
      _root.labCooldown = 5;
      _root.labEnemy = 446;
      _root.house.arena.enemy.approach = 0.1;
   }
   else if(_root.labCooldown > 0)
   {
      _root.showPopup("Please Wait","Please wait " + Math.ceil(_root.labCooldown) + " seconds before you summon the next monster.");
   }
   else
   {
      _root.showPopup("Too dangerous","This button is too dangerous. Better not touch it.");
   }
}



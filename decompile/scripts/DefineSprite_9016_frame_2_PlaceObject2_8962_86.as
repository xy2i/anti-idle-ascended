//! status=pending
onClipEvent(load){
   id = 1;
   levelCap = 20;
   levelCost = 150;
   bonName = "Ultimate Equipment";
   bonDesc = "Allows you to obtain Ultimate Equipment from the Special Shop. After unlocking this bonus, you may need to wait an extra day before Ultimate Equipment becomes available in the Special Shop.";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Ultimate Equipment is available for purchase in the Special Shop.\nUltimate Weapon\'s projectile damage: " + Math.round(10 + curLevel) + "% x 4";
   descB = "Ultimate Equipment is available for purchase in the Special Shop.\nUltimate Weapon\'s projectile damage: " + Math.round(10 + nextLevel) + "% x 4";
}



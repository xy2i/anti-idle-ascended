//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Mini Garden</font></b>\nDisplays the number of trees ready for harvest (on the left) and the number of trees planted (on the right). You can click to harvest all ready trees without going to the Garden. It costs you 2 Green Coins though. Don\'t ask why.";
}


on(release){
   if(_root.save.greenCoin >= 2)
   {
      _root.save.greenCoin -= 2;
   }
   _root.harvestAllTree();
   checkDelay = 80;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkDelay += 1;
   if(checkDelay > 80)
   {
      if(_root.save.featureMiniGarden == true || _root.save.autoHarvestTime > 0)
      {
         gotoAndStop(1);
         plantedTrees = 0;
         readyTrees = 0;
         i = 1;
         while(i <= _root.save.gardenCapacity)
         {
            if(_root.save.gardenTrees[i] > 0 && _root.save.gardenPurchaseTime[i] + _root.save.gardenExpiryTime[i] - _root.systemtimenow > 0)
            {
               plantedTrees += 1;
               if(_root.save.gardenRecentTime[i] + _root.save.gardenHarvestTime[i] - _root.systemtimenow <= 0)
               {
                  readyTrees += 1;
               }
            }
            i++;
         }
         miniGardenText.text = readyTrees + " / " + plantedTrees;
         if(readyTrees > 0)
         {
            miniGardenText.textColor = 16776960;
            if(_root.save.autoHarvestTime > 0)
            {
               _root.harvestAllTree();
            }
         }
         else if(plantedTrees == 0)
         {
            miniGardenText.textColor = 16711680;
         }
         else
         {
            miniGardenText.textColor = 10066329;
         }
      }
      else
      {
         gotoAndStop(2);
      }
      checkDelay = 0;
   }
   if(readyTrees > 0)
   {
      _alpha = 100;
      if(checkDelay >= 20 && checkDelay < 40 || checkDelay >= 60 && checkDelay < 80)
      {
         _alpha = 50;
      }
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   checkDelay = 80;
}



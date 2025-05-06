//! status=pending
on(release){
   checkCost();
   if(_root.save.greenCoin >= cost && _root.save.boostMax < 1600)
   {
      _root.save.greenCoin -= cost;
      _root.save.boostMax += 50;
      _root.depleteBoost();
   }
   checkCost();
}


onClipEvent(enterFrame){
   checkCost();
}


onClipEvent(load){
   function checkCost()
   {
      priceID = Math.round((_root.save.boostMax - 500) / 50);
      cost = priceArray[priceID];
      _parent.upgradeText.text = "Upgrade to " + _root.withComma(_root.boostMax + 50) + "% for " + _root.withComma(cost) + " Green Coins!";
      if(isNaN(cost) || cost == Infinity)
      {
         cost = Infinity;
         _parent.upgradeText.text = "No more upgrades are available.";
      }
      if(_root.save.gDifficulty == 3 && priceID >= 14 && _root.save.level < 8999)
      {
         cost = Infinity;
         _parent.upgradeText.text = "No more upgrades are available.";
      }
      if(_root.save.greenCoin >= cost)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   _alpha = 30;
   priceArray = [2500,5000,10000,25000,50000,100000,250000,500000,1000000,2500000,5000000,10000000,10000000,25000000,25000000,50000000,50000000,100000000,100000000,250000000,250000000,500000000,Infinity];
   checkCost();
}



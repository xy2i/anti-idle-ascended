//! status=pending
on(dragOver,rollOver){
   if(_alpha > 0)
   {
      _root.actiondescription = "Unlock an extra plot to plant in with " + _root.withComma(costCoin) + " Coins and " + _root.withComma(costPoint) + " Garden Points!";
   }
}


on(release){
   if(_root.save.coin >= costCoin && _root.save.gardenPoint >= costPoint && _alpha > 0)
   {
      _root.save.coin -= costCoin;
      _root.save.gardenPoint -= costPoint;
      _root.save.gardenCapacity += 1;
      _root.dispNews(24,"Plot #" + _root.save.gardenCapacity + " unlocked! (-" + _root.withComma(costCoin) + " Coins | -" + _root.withComma(costPoint) + " Garden Points)");
      costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * 5000000;
      costPoint = costArray[_root.save.gardenCapacity - 25];
      _root.actiondescription = "Unlock an extra plot to plant in with " + _root.withComma(costCoin) + " Coins and " + _root.withComma(costPoint) + " Garden Points!";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * 5000000;
   costPoint = costArray[_root.save.gardenCapacity - 25];
   if(_root.save.gardenCapacity >= 50)
   {
      _alpha = 0;
   }
   else if(_root.save.coin < costCoin || _root.save.gardenPoint < costPoint)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   _alpha = 0;
   costArray = [0,500,1500,3000,5000,7500,10000,12500,15000,17500,20000,25000,30000,35000,40000,50000,60000,70000,80000,90000,100000,125000,150000,175000,200000,Infinity];
}



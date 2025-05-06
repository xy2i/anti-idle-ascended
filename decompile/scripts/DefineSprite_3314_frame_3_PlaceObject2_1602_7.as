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
      costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * (_root.save.gardenCapacity - 50) * 5000000;
      costPoint = costArray[_root.save.gardenCapacity - 50];
      _root.actiondescription = "Unlock an extra plot to plant in with " + _root.withComma(costCoin) + " Coins and " + _root.withComma(costPoint) + " Garden Points!";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * (_root.save.gardenCapacity - 50) * 5000000;
   costPoint = costArray[_root.save.gardenCapacity - 50];
   if(_root.save.gardenCapacity >= 75)
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
   costArray = [0,100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000,1250000,1500000,1750000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,6000000,7000000,8000000,9000000,Infinity];
}



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
      _parent.gardenCapacityText.text = _root.save.gardenCapacity;
      if(_root.save.gardenCapacity > 25)
      {
         _parent.gardenCapacityText.text = 25;
      }
      _root.dispNews(24,"Plot #" + _root.save.gardenCapacity + " unlocked! (-" + _root.withComma(costCoin) + " Coins | -" + _root.withComma(costPoint) + " Garden Points)");
      costCoin = _root.save.gardenCapacity * _root.save.gardenCapacity * 500000;
      costPoint = costArray[_root.save.gardenCapacity];
      _root.actiondescription = "Unlock an extra plot to plant in with " + _root.withComma(costCoin) + " Coins and " + _root.withComma(costPoint) + " Garden Points!";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   costCoin = _root.save.gardenCapacity * _root.save.gardenCapacity * 500000;
   costPoint = costArray[_root.save.gardenCapacity];
   if(_root.saveid == 24)
   {
      costPoint = 10000000;
   }
   if(_root.save.gardenCapacity >= 25)
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
   costArray = [0,50,150,300,500,750,1000,1250,1500,1750,2000,2500,3000,3500,4000,5000,6000,7000,8000,9000,10000,12500,15000,17500,20000,Infinity];
}



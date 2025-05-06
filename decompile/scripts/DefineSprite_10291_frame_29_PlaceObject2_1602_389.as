//! status=pending
on(release){
   if(_root.save.featureButtonMachine != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureButtonMachine = true;
      _root.dispNews(14,"[Button Machine] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 150000;
   reqLevel = 40;
}



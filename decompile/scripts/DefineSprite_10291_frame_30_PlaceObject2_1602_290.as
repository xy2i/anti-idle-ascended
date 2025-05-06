//! status=pending
on(release){
   if(_root.save.featureEnergyToolbar != true && _root.save.blueCoin >= coinCost && _root.save.featureAwesomeAdventures == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureEnergyToolbar = true;
      _root.dispNews(14,"[Adventure Reminder] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 3000;
}



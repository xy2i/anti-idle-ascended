//! status=pending
on(release){
   if(_root.save.featureMiniGarden != true && _root.save.blueCoin >= coinCost && _root.save.featureGarden == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureMiniGarden = true;
      _root.dispNews(14,"[Mini Garden] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 250;
}



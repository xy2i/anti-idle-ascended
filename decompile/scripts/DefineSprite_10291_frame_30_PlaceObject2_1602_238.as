//! status=pending
on(release){
   if(_root.save.featureArcadePack != true && _root.save.blueCoin >= coinCost && _root.save.featureArcade == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureArcadePack = true;
      _root.dispNews(14,"[Arcade Pack] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 750;
}



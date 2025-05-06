//! status=pending
on(release){
   if(_root.save.featureTravelingTicket != true && _root.save.blueCoin >= coinCost && _root.save.featureBattleArena == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureTravelingTicket = true;
      _root.dispNews(14,"[VIP Traveling Ticket] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 3000;
}



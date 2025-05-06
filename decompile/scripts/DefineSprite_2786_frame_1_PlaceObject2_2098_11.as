//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.featureTravelingTicket != true && _root.save.blueCoin >= 3000 && _root.save.featureBattleArena == true)
   {
      _root.save.blueCoin -= 3000;
      _root.save.featureTravelingTicket = true;
      _root.dispNews(14,"[VIP Traveling Ticket] successfully purchased! (-3,000 Blue Coins)");
   }
}



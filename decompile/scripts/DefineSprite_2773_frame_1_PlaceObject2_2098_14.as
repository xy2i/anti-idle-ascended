//! status=pending
on(release){
   if(_root.save.featureMiniGarden != true && _root.save.blueCoin >= 250 && _root.save.featureGarden == true)
   {
      _root.save.blueCoin -= 250;
      _root.save.featureMiniGarden = true;
      _root.dispNews(14,"[Mini Garden] successfully purchased! (-250 Blue Coins)");
   }
}



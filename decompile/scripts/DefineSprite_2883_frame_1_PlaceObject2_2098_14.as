//! status=pending
on(release){
   if(_root.save.featureEpicLicense != true && _root.save.coin >= 300000000 && _root.save.level >= 600)
   {
      _root.save.coin -= 300000000;
      _root.save.featureEpicLicense = true;
      _root.dispNews(14,"[Epic License] successfully purchased! (-300,000,000 Coins)");
   }
}



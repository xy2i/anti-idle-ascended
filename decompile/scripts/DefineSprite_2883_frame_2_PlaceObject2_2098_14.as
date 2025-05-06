//! status=pending
on(release){
   if(_root.save.featureEpicLicense != true && _root.save.coin >= 30000000000 && _root.save.level >= 3000)
   {
      _root.save.coin -= 30000000000;
      _root.save.featureEpicLicense = true;
      _root.dispNews(14,"[Epic License] successfully purchased! (-30,000,000,000 Coins)");
   }
}



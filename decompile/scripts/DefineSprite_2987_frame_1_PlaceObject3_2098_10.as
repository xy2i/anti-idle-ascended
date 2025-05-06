//! status=pending
on(release){
   if(_root.save.featureTechnicalLight != true && _root.save.blueCoin >= 75000)
   {
      _root.save.blueCoin -= 75000;
      _root.save.featureTechnicalLight = true;
      _root.dispNews(16,"[Technical Lights] successfully purchased! (-75,000 Green Coins)");
   }
}



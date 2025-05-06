//! status=pending
on(release){
   if(_root.save.featureButtonMachine != true && _root.save.coin >= 125000 && _root.save.level >= 40)
   {
      _root.save.coin -= 125000;
      _root.save.featureButtonMachine = true;
      _root.dispNews(14,"[Button Machine] successfully purchased! (-125,000 Coins)");
   }
}



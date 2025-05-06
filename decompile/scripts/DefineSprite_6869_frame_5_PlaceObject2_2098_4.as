//! status=pending
on(release){
   if(_root.save.coin >= _root.stadiumBetCoin && _root.save.stadiumToken >= _root.stadiumBetToken)
   {
      _root.save.coin -= _root.stadiumBetCoin;
      _root.save.stadiumToken -= _root.stadiumBetToken;
      _root.betTarget = 1;
      _parent._parent.gotoAndStop(10);
   }
}



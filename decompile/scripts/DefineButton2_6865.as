//! status=pending
on(release){
   if(_root.stadiumBetCoin > 250000)
   {
      _root.stadiumBetCoin = Math.floor(_root.stadiumBetCoin / 2);
   }
}



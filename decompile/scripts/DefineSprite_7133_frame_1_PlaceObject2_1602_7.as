//! status=pending
on(release){
   lolMode = _root.save.lolConfig1;
   if(Key.isDown(32))
   {
      lolMode = _root.save.lolConfig2;
   }
   if(lolMode != 1)
   {
      maxPossible = Math.floor(_root.save.greenCoin / _root.save.lolPrice[_parent.gemLevel]);
      if(_root.save.lolConfig3 == true)
      {
         maxPossible = Math.floor(_root.save.greenCoin / 10 / _root.save.lolPrice[_parent.gemLevel]);
      }
      if(lolMode == 2 && maxPossible > Math.floor(_root.save.lolCapacity / 10))
      {
         maxPossible = Math.floor(_root.save.lolCapacity / 10);
      }
      if(maxPossible > _root.save.lolCapacity - _root.save.lolGems[_parent.gemLevel])
      {
         maxPossible = _root.save.lolCapacity - _root.save.lolGems[_parent.gemLevel];
      }
      if(_root.save.greenCoin >= _root.save.lolPrice[_parent.gemLevel] * maxPossible && maxPossible > 0)
      {
         _root.save.lolDemand[_parent.gemLevel] += Math.min(Math.floor(maxPossible / 5 / _parent.gemLevel / _parent.gemLevel),20);
         _root.save.greenCoin -= _root.save.lolPrice[_parent.gemLevel] * maxPossible;
         _root.save.lolProfit -= _root.save.lolPrice[_parent.gemLevel] * maxPossible;
         _root.save.lolSpent[_parent.gemLevel] += _root.save.lolPrice[_parent.gemLevel] * maxPossible;
         _root.save.lolGems[_parent.gemLevel] += 1 * maxPossible;
         _root.dispNews(108,maxPossible + " Lv. " + _parent.gemLevel + " Gems purchased! (-" + _root.withComma(_root.save.lolPrice[_parent.gemLevel] * maxPossible) + " Green Coins)");
      }
   }
   else if(_root.save.greenCoin >= _root.save.lolPrice[_parent.gemLevel] && _root.save.lolGems[_parent.gemLevel] < _root.save.lolCapacity)
   {
      _root.save.greenCoin -= _root.save.lolPrice[_parent.gemLevel];
      _root.save.lolProfit -= _root.save.lolPrice[_parent.gemLevel];
      _root.save.lolSpent[_parent.gemLevel] += _root.save.lolPrice[_parent.gemLevel];
      _root.save.lolGems[_parent.gemLevel] += 1;
      _root.dispNews(108,"Lv. " + _parent.gemLevel + " Gem purchased! (-" + _root.withComma(_root.save.lolPrice[_parent.gemLevel]) + " Green Coins)");
   }
   _parent.checkStuff();
}


onClipEvent(enterFrame){
   if(_root.save.greenCoin >= _root.save.lolPrice[_parent.gemLevel] && _root.save.lolGems[_parent.gemLevel] < _root.save.lolCapacity)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}



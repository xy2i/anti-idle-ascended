//! status=pending
on(release){
   card = _parent.card;
   if(Key.isDown(16))
   {
      if(_root.save.fcgDeck[card] > 0)
      {
         _root.save.fcgDeck[card] -= 1;
         _root.save.fcgTotalCards -= 1;
      }
   }
   else if(Key.isDown(17) || Key.isDown(66))
   {
      if(_root.save.fcgOwned[card] < 7 || card <= 26 && _root.save.fcgOwned[_parent.card] < 100)
      {
         if(_root.save.fcgCash >= _root.cardList[card].cost && !isNaN(_root.cardList[card].cost))
         {
            _root.save.fcgCash -= _root.cardList[card].cost;
            _root.save.fcgOwned[card] += 1;
         }
      }
   }
   else if(Key.isDown(83))
   {
      if(_root.save.fcgOwned[card] > _root.save.fcgDeck[card] && _root.save.fcgTotalCards >= 25)
      {
         if(!isNaN(_parent.sellprice))
         {
            _root.save.fcgCash += _parent.sellprice;
            _root.save.fcgOwned[card] -= 1;
         }
      }
   }
   else if(_root.cardList[card].upgraded == 1 || _root.cardList[card].upgraded == 3)
   {
      if(_root.save.fcgDeck[card] + _root.save.fcgDeck[_parent.card - 1] < 7 || card <= 26)
      {
         if(_root.save.fcgDeck[card] < _root.save.fcgOwned[card] && _root.save.fcgTotalCards < 100)
         {
            _root.save.fcgDeck[card] += 1;
            _root.save.fcgTotalCards += 1;
         }
      }
   }
   else if(_root.cardList[card].upgraded == 0 || _root.cardList[card].upgraded == 2)
   {
      if(_root.save.fcgDeck[card] + _root.save.fcgDeck[_parent.card + 1] < 7 || card <= 26)
      {
         if(_root.save.fcgDeck[card] < _root.save.fcgOwned[card] && _root.save.fcgTotalCards < 100)
         {
            _root.save.fcgDeck[card] += 1;
            _root.save.fcgTotalCards += 1;
         }
      }
   }
}



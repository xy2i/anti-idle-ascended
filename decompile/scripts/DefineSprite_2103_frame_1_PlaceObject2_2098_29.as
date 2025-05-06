//! status=pending
on(release){
   if(_root.cardList[_parent.card].upgraded == 1 || _root.cardList[_parent.card].upgraded == 3)
   {
      if(_root.save.fcgDeck[_parent.card] + _root.save.fcgDeck[_parent.card - 1] < 7 || _parent.card <= 26)
      {
         if(_root.save.fcgDeck[_parent.card] < _root.save.fcgOwned[_parent.card] && _root.save.fcgTotalCards < 100)
         {
            _root.save.fcgDeck[_parent.card] += 1;
            _root.save.fcgTotalCards += 1;
         }
      }
   }
   else if(_root.cardList[_parent.card].upgraded == 0 || _root.cardList[_parent.card].upgraded == 2)
   {
      if(_root.save.fcgDeck[_parent.card] + _root.save.fcgDeck[_parent.card + 1] < 7 || _parent.card <= 26)
      {
         if(_root.save.fcgDeck[_parent.card] < _root.save.fcgOwned[_parent.card] && _root.save.fcgTotalCards < 100)
         {
            _root.save.fcgDeck[_parent.card] += 1;
            _root.save.fcgTotalCards += 1;
         }
      }
   }
}



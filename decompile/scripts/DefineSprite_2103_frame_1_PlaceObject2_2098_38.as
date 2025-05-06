//! status=pending
on(release){
   if(_root.save.fcgOwned[_parent.card] > _root.save.fcgDeck[_parent.card] && _root.save.fcgTotalCards >= 25)
   {
      if(!isNaN(_parent.sellprice))
      {
         _root.save.fcgCash += _parent.sellprice;
         _root.save.fcgOwned[_parent.card] -= 1;
      }
   }
}



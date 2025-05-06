//! status=pending
on(release){
   if(_root.save.fcgOwned[_parent.card] < 7 || _parent.card <= 26 && _root.save.fcgOwned[_parent.card] < 100)
   {
      if(_root.save.fcgCash >= _root.cardList[_parent.card].cost && !isNaN(_root.cardList[_parent.card].cost))
      {
         _root.save.fcgCash -= _root.cardList[_parent.card].cost;
         _root.save.fcgOwned[_parent.card] += 1;
      }
   }
}



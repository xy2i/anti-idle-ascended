//! status=pending
on(release){
   if(_root.save.fcgDeck[_parent.card] > 0)
   {
      _root.save.fcgDeck[_parent.card] -= 1;
      _root.save.fcgTotalCards -= 1;
   }
}



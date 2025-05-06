//! status=pending
_root.save.fcgTotalCards = 0;
i = 1;
while(i <= 400)
{
   if(!isNaN(_root.save.fcgDeck[i]) && _root.save.fcgDeck[i] > 0)
   {
      _root.save.fcgTotalCards += _root.save.fcgDeck[i];
   }
   i++;
}
_root.house.gotoAndStop(12);

//! status=pending
if(_parent._currentframe == 4)
{
   cardtowin = _parent.enemyDeckArray[random(_root.opponent_totalcards) + 1];
   if(_root.fcg_epic > 0)
   {
      cardtowin = random(13) * 2 + 1;
   }
   if(isNaN(cardtowin))
   {
      cardtowin = 1;
   }
   _root.save.fcgOwned[cardtowin] += 1;
   gotoAndStop(2);
}
else
{
   gotoAndStop(3);
}

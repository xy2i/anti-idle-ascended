//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.save.fcgCurDiff == 9)
   {
      if(_root.save.fcgLegendDeck > 0 && _root.save.fcgLegendLife > 0)
      {
         gotoAndStop(4);
      }
      else if(_root.systemtimenow % 86400000 > 85500000)
      {
         gotoAndStop(6);
      }
      else
      {
         gotoAndStop(5);
      }
   }
   else if(_root.save.fcgCurDiff == 11)
   {
      gotoAndStop(7);
   }
   else if(_root.save.fcgCurDiff == 10)
   {
      gotoAndStop(9);
   }
   else if(_root.save.fcgCurDiff == 8)
   {
      gotoAndStop(3);
   }
   else if(_root.save.fcgCurDiff == 5)
   {
      if(_root.saveid == 4)
      {
         gotoAndStop(8);
      }
      else
      {
         gotoAndStop(2);
      }
   }
   else
   {
      gotoAndStop(1);
   }
   winCountText.text = _root.save["fcgLevel" + _root.save.fcgCurDiff];
   winStreakText.text = _root.save["fcgStreak" + _root.save.fcgCurDiff] + "x [Best: " + _root.save["fcgMaxStreak" + _root.save.fcgCurDiff] + "x]";
};

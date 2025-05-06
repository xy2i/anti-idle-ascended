//! status=pending
onEnterFrame = null;
if(_root.save.fcgPlay > 0)
{
   text1 = _root.save.fcgPlay;
   text2 = _root.save.fcgWin;
   text3 = _root.save.fcgLose;
   text4 = _root.save.fcgStreak;
   text5 = Math.floor(_root.save.fcgWin / _root.save.fcgPlay * 10000) / 100 + "%";
   text6 = _root.save.fcgExp + _root.save.fcgExpTotal;
   text7 = Math.floor(text6 / _root.save.fcgPlay * 10) / 10;
   text8 = _root.save.fcgCash;
   text9 = _root.save.fcgMaxCash;
}

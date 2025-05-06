//! status=pending
if(_root.saveGlobal.defTab == 0)
{
   _root.saveGlobal.defTab = 2;
}
curTab = _root.saveGlobal.defTab;
_root.breakoffset = 0;
if(curTab <= 4)
{
   b = 1;
   while(b <= 4)
   {
      c = b + _root.breakoffset;
      this["superbreak" + b].text = _root["X" + curTab + "breakStamp" + c];
      this["superbreak" + b].textColor = _root["X" + curTab + "breakColor" + c];
      this["superbreak" + b + "a"].text = _root["X" + curTab + "breakNews" + c];
      this["superbreak" + b + "a"].textColor = _root["X" + curTab + "breakColor" + c];
      b++;
   }
}
else if(curTab == 5)
{
   fr = _root.house._currentframe;
   b = 1;
   while(b <= 4)
   {
      c = b + _root.breakoffset;
      this["superbreak" + b].text = _root["F" + fr + "breakStamp" + c];
      this["superbreak" + b].textColor = _root["F" + fr + "breakColor" + c];
      this["superbreak" + b + "a"].text = _root["F" + fr + "breakNews" + c];
      this["superbreak" + b + "a"].textColor = _root["F" + fr + "breakColor" + c];
      b++;
   }
}
tempFeature = 0;
onEnterFrame = function()
{
   if(_root.house._currentframe != tempFeature)
   {
      _root.updateBreakNews = 1;
      tempFeature = _root.house._currentframe;
   }
   if(_root.updateBreakNews == 1)
   {
      if(curTab <= 4)
      {
         b = 1;
         while(b <= 4)
         {
            c = b + _root.breakoffset;
            this["superbreak" + b].text = _root["X" + curTab + "breakStamp" + c];
            this["superbreak" + b].textColor = _root["X" + curTab + "breakColor" + c];
            this["superbreak" + b + "a"].text = _root["X" + curTab + "breakNews" + c];
            this["superbreak" + b + "a"].textColor = _root["X" + curTab + "breakColor" + c];
            b++;
         }
      }
      else
      {
         fr = _root.house._currentframe;
         b = 1;
         while(b <= 4)
         {
            c = b + _root.breakoffset;
            this["superbreak" + b].text = _root["F" + fr + "breakStamp" + c];
            this["superbreak" + b].textColor = _root["F" + fr + "breakColor" + c];
            this["superbreak" + b + "a"].text = _root["F" + fr + "breakNews" + c];
            this["superbreak" + b + "a"].textColor = _root["F" + fr + "breakColor" + c];
            b++;
         }
      }
      _root.updateBreakNews = 0;
   }
};
